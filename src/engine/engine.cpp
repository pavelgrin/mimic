#include <engine/ecs.hpp>
#include <engine/engine.hpp>

namespace engine
{
int run()
{
    bool isRunning = true;
    while (isRunning)
    {
        engine::ecs::update(0.f);

        isRunning = false;
    }

    return 0;
}
} // namespace engine
