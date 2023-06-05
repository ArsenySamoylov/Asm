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
    virtual ~NoCopyable () = default;

    NoCopyable& operator = (const NoCopyable&) = delete;

    NoCopyable (const NoCopyable&)   = delete;
    };