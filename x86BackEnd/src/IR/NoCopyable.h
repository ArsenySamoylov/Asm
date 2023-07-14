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
    explicit NoCopyable () = default;
    virtual ~NoCopyable () = default;

    NoCopyable (const NoCopyable&)   = delete;
    NoCopyable& operator = (const NoCopyable&) = delete;

    NoCopyable (NoCopyable&&) = delete;
    NoCopyable& operator = (const NoCopyable&&) = delete;
    };