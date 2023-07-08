<?php

namespace App\Jobs;

use App\Models\Post;
use Carbon\Carbon;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class ForceDeleteSoftDeletedPosts implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public function handle(): void
    {
        $thirtyDaysAgo = Carbon::now()->subDays(30);
        $posts = Post::where([
            ['updated_at', '<', $thirtyDaysAgo],
            ['disable','=',true]
            ])
        ->get();


    foreach ($posts as $post) {
        $post->delete();
    }

    }
}
