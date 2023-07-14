/*!
\file
\brief NoCopyable class 
*/
#pragma once

/**
 * @brief No COPY !!!!
 * 
 */
class NoCopyable
    {
    public:
    NoCopyable () = default;
    ~NoCopyable () = default;

    NoCopyable (const NoCopyable&) = delete;
    NoCopyable& operator= (const NoCopyable&) = delete;

    NoCopyable (const NoCopyable&&) = delete;
    NoCopyable& operator= (NoCopyable&&) = delete;
    };