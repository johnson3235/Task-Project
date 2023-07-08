<?php

namespace App\Console\Commands;

use App\Jobs\MakeHttpRequestJob;
use Illuminate\Console\Command;

class ExtractData extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:extract-data';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        dispatch(new MakeHttpRequestJob());
    }
}
