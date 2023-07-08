<?php

namespace App\Console\Commands;

use App\Jobs\ForceDeleteSoftDeletedPosts;
use Illuminate\Console\Command;

class deleteSoft extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'custom:run-job';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Delete Posts After 30 Days';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        dispatch(new ForceDeleteSoftDeletedPosts());
    }
}
