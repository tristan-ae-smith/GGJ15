#include "cinder/app/AppNative.h"
#include "cinder/gl/gl.h"

#include <vector>
#include "Bird.h"

using namespace ci;
using namespace ci::app;
using namespace std;

class GGJ15App : public AppNative {
  public:
	void setup();
	void mouseDown( MouseEvent event );	
	void update();
	void draw();
	
    std::vector<Bird*> birds;
};

void GGJ15App::setup()
{
    // Parsing the file
	birds.push_back(new Bird (Vec2f (100., 100.), Vec2f (5., 0.), 45.));
}

void GGJ15App::mouseDown( MouseEvent event )
{
}

void GGJ15App::update()
{
    // Collision
	for (int i = 0; i < birds.size(); i++)
	{
		birds[i]->update();
	}
}

void GGJ15App::draw()
{
	// clear out the window with black
	gl::clear( Color( 0, 0, 0 ) );
	for (int i = 0; i < 1; i++)
	{
		birds[0]->draw();
	}
}

CINDER_APP_NATIVE( GGJ15App, RendererGl )
