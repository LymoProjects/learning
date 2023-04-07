#include <cmath>
#include <functional>
#include <memory>
#include <string>
#include <thread>

#include <llapi/mc/Player.hpp>
#include <llapi/mc/ItemStack.hpp>

#include <llapi/ScheduleAPI.h>
#include <llapi/EventAPI.h>
#include <llapi/LoggerAPI.h>

Logger extern logger;

auto PluginInit() -> void {
    using namespace std::literals;

    Event::PlayerEatEvent::subscribe([](Event::PlayerEatEvent const & e){
        e.mPlayer->sendText("plugin other eat 1 said you are ready to eating " + e.mFoodItem->getName());

        return false;
    });

    Event::PlayerEatEvent::subscribe([](Event::PlayerEatEvent const & e){
        e.mPlayer->sendText("plugin other eat 2 said you are ready to eating " + e.mFoodItem->getName());

        return true;
    });
}
