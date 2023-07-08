<?php

namespace App\Console;

use App\Jobs\ForceDeleteSoftDeletedPosts;
use App\Jobs\MakeHttpRequestJob;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * Define the application's command schedule.
     */
    protected $commands = [
        \App\Console\Commands\deleteSoft::class,
        \App\Console\Commands\ExtractData::class,
    ];

    protected function schedule(Schedule $schedule)
    {
        $schedule->command('custom:run-job')->daily();

        $schedule->command('app:extract-data')->everySixHours();
      
    }

    /**
     * Register the commands for the application.
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
