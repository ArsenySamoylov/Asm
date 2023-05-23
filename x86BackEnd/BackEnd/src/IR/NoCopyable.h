#pragma once

class NoCopyable
    {
    public:
             NoCopyable () = default;
    virtual ~NoCopyable () = default;

    NoCopyable& operator = (const NoCopyable&) = delete;

    NoCopyable (const NoCopyable&)   = delete;
    };