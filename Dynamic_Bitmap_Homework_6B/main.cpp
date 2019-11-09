#include<iostream>

#define STB_IMAGE_WRITE_IMPLEMENTATION

#include"stb_image_write.h"

using namespace std;

class DynamicBitmap{
private :
    uint32_t w, h;
    uint32_t *pixels;

public:
    DynamicBitmap(uint32_t width, uint32_t height, uint32_t color):w(width),h(height),pixels(new uint32_t[w*h]){
        if(!pixels){
            cout << "Delete the heap";
        }
        else{
            for(uint32_t i=0; i < w*h; i++){
                pixels[i]=color;
                }
            }
        }


    ~DynamicBitmap(){
        delete [] pixels;
    }

    DynamicBitmap(const DynamicBitmap & old_obj):w(old_obj.w),h(old_obj.h){           // Copy constructor
        memcpy(pixels,old_obj.pixels,sizeof(uint32_t )* w * h);
    }

    DynamicBitmap& operator =(DynamicBitmap& old_obj){      // Operator
        w=old_obj.w;
        h=old_obj.h;
        swap(pixels,old_obj.pixels);
        return *this;
    }

    DynamicBitmap(DynamicBitmap&& old_obj):w(old_obj.w),h(old_obj.h),pixels(old_obj.pixels){        // Move Constructor
        old_obj.pixels= nullptr;
    }

    void horizLine(int start_col, int end_col, int row, uint32_t color1) {
        for (int i = start_col; i <= end_col; i++) {
            pixels[(row*w)+i]=color1;
        }
    }

    void vertLine(double start_row, double end_row, int col, uint32_t color1) {
        for (int i = start_row; i <= end_row; i++) {
            pixels[(i*w) + col] = color1;
        }
    }

    void drawRect(double x_axis, double y_axis, double width, double height, uint32_t color2) {
        horizLine(x_axis, x_axis + width, y_axis, color2);
        vertLine(y_axis, y_axis + height, x_axis, color2);
        vertLine(x_axis, x_axis + height, x_axis + width, color2);
        horizLine(y_axis, y_axis + width, y_axis + height, color2);

    }

    void fillRect(int x_axis, int y_axis, int width, int height, uint32_t color3) {
        for (int i = y_axis*w+x_axis; i <= (y_axis+height)*w ; i=i+w) {
                for(int j= i ; j<= i + width; j++){
                pixels[j]=color3;
                }
            }
        }

    void line(int x1, int y1, int x2, double y2, int color4){
        double diff_x = x2-x1, diff_y = y2-y1;
        double slope_error =  2*(diff_y) - diff_x;
        if(x1<x2 && y1<y2) {                                             // assumption of bresenham's line algorithm
            for (int i = x1; i <= x2; i++) {
                if(slope_error > 0){
                    slope_error += 2*diff_y - 2*diff_x;
                    x1++; y1++;
                    pixels[y1*w+i] = color4;
                }
                else{
                    slope_error += 2*diff_y;
                    x1++;
                    pixels[y1*w+i] = color4;
                }
            }
        }
    }

    void ellipse(double a, double b, double c, double d) {


        for(double i=0.5; i<=360; i+=0.5){
             int x=a+((c/2)*cos(i*M_PI/180));
             int y=b+((d/2)*sin(i*M_PI/180));
             pixels[y*w + x]=0xFFFFFFFF;
             //pixels[(y-1)*w + x-1]=0x80808080;
             //pixels[(y+1)*w + x+1]=0x80808080;
        }
    }

    void save(const char filename[]) {
        stbi_write_png(filename, w, h, 4, pixels, w * 4);
    }
};
int main() {
    // FIRST PART (ADD COLORS HERE)
    constexpr uint32_t BLACK = 0xFF000000; // black opaque
    constexpr uint32_t RED = 0xFF0000FF; // red opaque
    constexpr uint32_t BLUE = 0xFFFF0000; // blue opaque
    constexpr uint32_t WHITE = 0xFFFFFFFF; // white opaque
    constexpr uint32_t YELLOW = 0xFF00FFFF; //yellow opaque


    // SECOND PART (DO NOT EDIT)
    int xcenter = 100;
    int ycenter = 100;
    int xdiameter = 200;
    int ydiameter = 100;

    DynamicBitmap b(1024, 1024, BLACK); // Potentially dynamic size (Now: 1024 x 1024 pixels)

    b.horizLine(0, 500, 200, RED); // horizontal line from x=0 to x=500, @y = 200
    b.vertLine(0, 399, 300, RED); // y=0 to y=399 @ x= 300, red vertical line

    b.drawRect(200,200, 100,50, BLUE); // blue rectangle, top-left=200,200 w=100 h=50
    b.fillRect(201,201, 98,48, WHITE); // same but filled
//
    b.line(400,0, 550,300, YELLOW); // draw a line https://en.wikipedia.org/wiki/Bresenham's_line_algorithm

    b.ellipse(xcenter, ycenter, xdiameter, ydiameter);

    b.save("bitmap2.png");

}
