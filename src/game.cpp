#include "game.h"
#include "resource_manager.h"
// #include "shape_renderer.h"
#include "sprite_renderer.h"

SpriteRenderer *Renderer;

Game::Game(unsigned int width, unsigned int height) 
    : State(GAME_ACTIVE), Keys(), Width(width), Height(height)
{ 

}

Game::~Game()
{
   delete Renderer; 
}

void Game::init()
{
    //load shaders
    ResourceManager::LoadShader("shaders/shape.vert.glsl", "shaders/shape.frag.glsl", nullptr, "sprite");
    glm::mat4 projection = glm::ortho(0.0f, static_cast<float>(this->Width), 
        static_cast<float>(this->Height), 0.0f, -1.0f, 1.0f);
    ResourceManager::GetShader("sprite").Use().SetInteger("image", 0);
    ResourceManager::GetShader("sprite").SetMatrix4("projection", projection);
        // set render-specific controls
    // Renderer = new ShapeRenderer(ResourceManager::GetShader("sprite"));
    //TODO change to return the reference value so the code above works
    Shader myShader;
    myShader = ResourceManager::GetShader("sprite");
    Renderer = new SpriteRenderer(myShader);
    ResourceManager::LoadTexture("textures/awesomeface.png", true, "face");
}

void Game::update(float dt)
{
    
}

void Game::processInput(float dt)
{
   
}

void Game::render()
{
    Texture2D myTexture;
    myTexture = ResourceManager::GetTexture("awesomeface.png");
    Renderer->DrawSprite(myTexture,glm::vec2(200.0f, 200.0f), glm::vec2(300.0f, 400.0f), 45.0f, glm::vec3(0.0f, 1.0f, 0.0f));    
}