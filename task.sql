-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 11:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'cd935007-77b9-4005-ab1a-f4eb4fb2027f', 'database', 'default', '{\"uuid\":\"cd935007-77b9-4005-ab1a-f4eb4fb2027f\",\"displayName\":\"App\\\\Jobs\\\\ForceDeleteSoftDeletedPosts\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ForceDeleteSoftDeletedPosts\",\"command\":\"O:36:\\\"App\\\\Jobs\\\\ForceDeleteSoftDeletedPosts\\\":0:{}\"}}', 'BadMethodCallException: Call to undefined method App\\Models\\Post::onlyTrashed() in C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\ForwardsCalls.php:67\nStack trace:\n#0 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\ForwardsCalls.php(36): Illuminate\\Database\\Eloquent\\Model::throwBadMethodCallException(\'onlyTrashed\')\n#1 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(2335): Illuminate\\Database\\Eloquent\\Model->forwardCallTo(Object(Illuminate\\Database\\Eloquent\\Builder), \'onlyTrashed\', Array)\n#2 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(2347): Illuminate\\Database\\Eloquent\\Model->__call(\'onlyTrashed\', Array)\n#3 C:\\xampp_8.2\\htdocs\\Project_Task\\app\\Jobs\\ForceDeleteSoftDeletedPosts.php(19): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'onlyTrashed\', Array)\n#4 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ForceDeleteSoftDeletedPosts->handle()\n#5 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#6 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#7 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#8 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#9 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#10 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#11 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#12 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts), false)\n#14 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#15 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#16 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#17 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#18 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#19 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#20 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#24 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#25 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#26 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#27 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#28 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#29 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(208): Illuminate\\Container\\Container->call(Array)\n#30 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(177): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#32 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Application.php(1081): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Application.php(320): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Application.php(174): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(200): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp_8.2\\htdocs\\Project_Task\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2023-07-08 16:22:58'),
(2, '9e50ca28-7ca9-4b5b-aea5-2e0a71c6542c', 'database', 'default', '{\"uuid\":\"9e50ca28-7ca9-4b5b-aea5-2e0a71c6542c\",\"displayName\":\"App\\\\Jobs\\\\ForceDeleteSoftDeletedPosts\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ForceDeleteSoftDeletedPosts\",\"command\":\"O:36:\\\"App\\\\Jobs\\\\ForceDeleteSoftDeletedPosts\\\":0:{}\"}}', 'BadMethodCallException: Call to undefined method App\\Models\\Post::onlyTrashed() in C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\ForwardsCalls.php:67\nStack trace:\n#0 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\ForwardsCalls.php(36): Illuminate\\Database\\Eloquent\\Model::throwBadMethodCallException(\'onlyTrashed\')\n#1 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(2335): Illuminate\\Database\\Eloquent\\Model->forwardCallTo(Object(Illuminate\\Database\\Eloquent\\Builder), \'onlyTrashed\', Array)\n#2 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(2347): Illuminate\\Database\\Eloquent\\Model->__call(\'onlyTrashed\', Array)\n#3 C:\\xampp_8.2\\htdocs\\Project_Task\\app\\Jobs\\ForceDeleteSoftDeletedPosts.php(21): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'onlyTrashed\', Array)\n#4 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ForceDeleteSoftDeletedPosts->handle()\n#5 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#6 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#7 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#8 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#9 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#10 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#11 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#12 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts), false)\n#14 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#15 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#16 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#17 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#18 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#19 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#20 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#24 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#25 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#26 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#27 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#28 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#29 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(208): Illuminate\\Container\\Container->call(Array)\n#30 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(177): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#32 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Application.php(1081): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Application.php(320): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Application.php(174): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(200): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp_8.2\\htdocs\\Project_Task\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2023-07-08 16:25:51'),
(3, '05faa5b7-27ac-44c0-8bf3-b84f054e142e', 'database', 'default', '{\"uuid\":\"05faa5b7-27ac-44c0-8bf3-b84f054e142e\",\"displayName\":\"App\\\\Jobs\\\\ForceDeleteSoftDeletedPosts\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ForceDeleteSoftDeletedPosts\",\"command\":\"O:36:\\\"App\\\\Jobs\\\\ForceDeleteSoftDeletedPosts\\\":0:{}\"}}', 'BadMethodCallException: Call to undefined method App\\Models\\Post::onlyTrashed() in C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\ForwardsCalls.php:67\nStack trace:\n#0 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\ForwardsCalls.php(36): Illuminate\\Database\\Eloquent\\Model::throwBadMethodCallException(\'onlyTrashed\')\n#1 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(2335): Illuminate\\Database\\Eloquent\\Model->forwardCallTo(Object(Illuminate\\Database\\Eloquent\\Builder), \'onlyTrashed\', Array)\n#2 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(2347): Illuminate\\Database\\Eloquent\\Model->__call(\'onlyTrashed\', Array)\n#3 C:\\xampp_8.2\\htdocs\\Project_Task\\app\\Jobs\\ForceDeleteSoftDeletedPosts.php(21): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'onlyTrashed\', Array)\n#4 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ForceDeleteSoftDeletedPosts->handle()\n#5 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#6 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#7 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#8 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#9 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#10 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#11 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#12 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts), false)\n#14 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#15 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#16 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#17 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#18 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#19 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#20 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#24 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#25 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#26 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#27 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#28 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#29 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(208): Illuminate\\Container\\Container->call(Array)\n#30 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(177): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#32 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Application.php(1081): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Application.php(320): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Application.php(174): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(200): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp_8.2\\htdocs\\Project_Task\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2023-07-08 16:32:17'),
(4, '5bffc0ba-d99c-4088-8a47-5696babc04bb', 'database', 'default', '{\"uuid\":\"5bffc0ba-d99c-4088-8a47-5696babc04bb\",\"displayName\":\"App\\\\Jobs\\\\ForceDeleteSoftDeletedPosts\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ForceDeleteSoftDeletedPosts\",\"command\":\"O:36:\\\"App\\\\Jobs\\\\ForceDeleteSoftDeletedPosts\\\":0:{}\"}}', 'BadMethodCallException: Call to undefined method App\\Models\\Post::onlyTrashed() in C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\ForwardsCalls.php:67\nStack trace:\n#0 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\ForwardsCalls.php(36): Illuminate\\Database\\Eloquent\\Model::throwBadMethodCallException(\'onlyTrashed\')\n#1 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(2335): Illuminate\\Database\\Eloquent\\Model->forwardCallTo(Object(Illuminate\\Database\\Eloquent\\Builder), \'onlyTrashed\', Array)\n#2 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(2347): Illuminate\\Database\\Eloquent\\Model->__call(\'onlyTrashed\', Array)\n#3 C:\\xampp_8.2\\htdocs\\Project_Task\\app\\Jobs\\ForceDeleteSoftDeletedPosts.php(21): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'onlyTrashed\', Array)\n#4 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ForceDeleteSoftDeletedPosts->handle()\n#5 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#6 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#7 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#8 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#9 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#10 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#11 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#12 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts), false)\n#14 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#15 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#16 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#17 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ForceDeleteSoftDeletedPosts))\n#18 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#19 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#20 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#24 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#25 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#26 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#27 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#28 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#29 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(208): Illuminate\\Container\\Container->call(Array)\n#30 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(177): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#32 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Application.php(1081): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Application.php(320): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\symfony\\console\\Application.php(174): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp_8.2\\htdocs\\Project_Task\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(200): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp_8.2\\htdocs\\Project_Task\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2023-07-08 16:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_07_07_132810_create_tags_table', 1),
(13, '2023_07_07_133731_create_posts_table', 1),
(14, '2023_07_07_134018_create_post_tags_table', 1),
(16, '2023_07_08_131122_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'JWT', '9abe2aec7dffd121021a517041aef1231eb63e3020f817c7f4c6fedf57dc0799', '[\"*\"]', '2023-07-08 17:40:27', NULL, '2023-07-08 03:44:05', '2023-07-08 17:40:27'),
(2, 'App\\Models\\User', 2, 'JWT', 'd5d61f05856003a74365d956424914a2aaa81a51652abc3659ea7ce770e08d9c', '[\"*\"]', NULL, NULL, '2023-07-08 03:47:52', '2023-07-08 03:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  `disable` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `image`, `pinned`, `disable`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Task_Project', 'Great Experience Will be Gained oR NOT', '64a9079ce61d1_.png', 0, 0, 1, '2023-07-08 03:47:14', '2023-07-08 03:56:01'),
(2, 'Second_Task_Project', 'Great Experience Will be Gained Be Patient You Can', '64a9081a46405_.png', 1, 0, 1, '2023-07-08 03:54:18', '2023-07-08 03:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tags_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tags_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-07-08 06:47:14', '2023-07-08 06:47:14'),
(4, 1, 4, '2023-07-08 06:52:12', '2023-07-08 06:52:12'),
(5, 2, 4, '2023-07-08 06:54:18', '2023-07-08 06:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'persons', '2023-07-08 03:44:44', '2023-07-08 03:44:44'),
(2, 'albums', '2023-07-08 03:44:56', '2023-07-08 03:44:56'),
(3, 'songs', '2023-07-08 03:45:04', '2023-07-08 03:45:04'),
(4, 'artists', '2023-07-08 03:45:12', '2023-07-08 03:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'john youssef', '01277689759', NULL, '$2y$10$vsfTMeeMR.Vn8qd.xiQE/.drWdkJoe9iYVnEaxi/DqEGr71JkySaq', NULL, '2023-07-08 03:44:05', '2023-07-08 03:44:05'),
(2, 'john youssef', '01119023851', NULL, '$2y$10$dd4dmlBJxudTi8po9FAq8.Y5BejMVgdFEhD4My/hBowFdDZkq3xsS', NULL, '2023-07-08 03:47:52', '2023-07-08 03:47:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tags_post_id_tags_id_unique` (`post_id`,`tags_id`),
  ADD KEY `post_tags_tags_id_foreign` (`tags_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tags_tags_id_foreign` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
