-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 29 jan. 2023 à 21:11
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel_blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PHP', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(2, 'HTML', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(3, 'CSS', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(4, 'JAVASCRIPT', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(5, 'PYTHON', '2023-01-29 19:03:46', '2023-01-29 19:03:46');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_29_190506_create_posts_table', 1),
(6, '2023_01_29_190553_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`, `user_id`, `category_id`) VALUES
(1, 'Quos maiores atque consequatur necessitatibus omnis omnis repellendus.', 'Iste ut dignissimos officiis qui aut. Ut distinctio perspiciatis delectus voluptas blanditiis esse dolor dolores. Est veritatis ipsa dolorem sed suscipit. Doloremque et quaerat sunt id fuga officia. Consectetur et ex voluptatem dolores commodi.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 1, 3),
(2, 'Et aut vel nostrum nostrum qui at.', 'Itaque voluptatem omnis labore officia. Ut enim repellendus facilis consequatur veritatis. Sint omnis harum omnis corporis deserunt sed enim porro. Eos temporibus et fuga corrupti suscipit. Repudiandae dolorem illum fuga hic.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 2, 4),
(3, 'Voluptatem sed et tempore delectus voluptatem unde quia laborum qui.', 'Pariatur enim ut voluptatum consequatur esse sequi numquam. Voluptatum autem enim aut dolor nobis sed. Reiciendis vitae eius quis illo illo maxime aut. Autem ut voluptas ut. At sint mollitia incidunt laborum repudiandae tempore.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 3, 5),
(4, 'Autem illo est explicabo perspiciatis reprehenderit voluptas in eligendi quo minus.', 'Illum perferendis consectetur optio accusantium. Labore est enim placeat. Ab quia distinctio molestiae est. Atque ut eaque inventore. Repudiandae velit velit perferendis consectetur perspiciatis.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 4, 4),
(5, 'Recusandae ullam aperiam et et numquam blanditiis fugiat ea aut.', 'Voluptas distinctio nostrum dolor ratione ipsum. Reiciendis numquam provident qui perspiciatis voluptas enim qui accusantium. Et quis minima similique tempora beatae quis dolorem. Ullam amet nulla saepe consequatur est. Ut id sit dolores odio.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 5, 1),
(6, 'Numquam nulla blanditiis exercitationem odio laudantium expedita.', 'Minus eius doloribus et est. Esse ut sunt aut in id impedit minus. Voluptatem sed dignissimos voluptates est. Qui est sapiente illum facilis deleniti itaque cumque. Omnis sint est animi esse expedita accusantium.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 5, 1),
(7, 'Soluta officia enim aspernatur id tempore reprehenderit illum.', 'Accusamus blanditiis in eveniet. Cumque nostrum quis ab eos. Libero dolor qui at. Illum aut ut tenetur sed. Ea sed et nemo.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 5, 1),
(8, 'Expedita ab minima sit sunt vel exercitationem suscipit et fugit sit.', 'Hic quasi facere dolore dolore. Et quis vero earum voluptatem impedit quibusdam. Quibusdam explicabo velit est vitae est. Labore magnam totam explicabo et rerum optio sed. Molestiae unde illum omnis deserunt.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 6, 4),
(9, 'Et nulla vitae eveniet est quia quibusdam et est velit inventore vitae facere provident.', 'Harum in occaecati voluptatum ut et vero dolorem. Quae accusamus dolorem similique est. Dolorum vero dolores blanditiis et id. Optio quia distinctio ipsum quos omnis. Repellat aperiam et recusandae id.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 6, 4),
(10, 'Ut repudiandae officia dolorem nisi qui adipisci.', 'Non aut distinctio aut aliquid provident veniam. Molestias voluptatum alias sequi voluptatum impedit ad non. Aut magnam est provident impedit repellendus eum. Sint ipsam deleniti est sed exercitationem. Aliquid et non natus et.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 6, 4),
(11, 'Possimus beatae non non vero.', 'Officiis sunt repellat nobis autem ut necessitatibus ut. Ipsum voluptates maiores ad neque hic. Sed doloribus cupiditate beatae debitis dignissimos repellat. Ea accusamus accusamus ducimus aliquid repudiandae ut officia. Fuga consectetur atque possimus hic.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 7, 3),
(12, 'Et dolor ut minima ex aliquam.', 'Et molestias fugit dolor labore et. Est ut sit est explicabo quibusdam molestiae reiciendis. Eos dolorum qui est molestiae. Quae porro necessitatibus itaque sapiente. Est quam et sunt quia eum aut.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 7, 3),
(13, 'Animi ipsa dolore corporis est illum totam accusamus consequuntur aut.', 'Fugit ea inventore qui dolores. Repellat fugit qui voluptas est. Itaque nesciunt rerum quaerat. Voluptatem ullam est ipsam. Consequatur laboriosam aspernatur aut sed voluptatibus labore qui.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 8, 4),
(14, 'Sed non voluptate deleniti natus repellat aut ipsum aut et quae accusamus recusandae.', 'Ullam eum alias sunt odit vitae repudiandae. Omnis accusamus pariatur quisquam. Ut quos debitis et. Rerum quos ratione dolores voluptatibus. Qui voluptatum officiis odio nihil.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 8, 4),
(15, 'Omnis mollitia deleniti explicabo eum fugiat tempora qui.', 'Amet aliquid quibusdam doloremque veritatis quia incidunt quia. In praesentium quae qui id ratione odit aut. Quae perferendis quis ducimus neque quidem voluptatem. Ut quidem hic est. Voluptatem quidem ratione atque officia.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 8, 4),
(16, 'Dolore illo blanditiis quidem delectus natus fugit rerum.', 'Facere ut unde tempore fugit ipsam. Doloremque non iste sit rerum autem veritatis. Eveniet amet aliquid sint et nisi eveniet veniam minus. Harum accusantium molestiae et totam enim. Iusto est qui incidunt laborum.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 9, 3),
(17, 'Eos dolorum ut alias necessitatibus tempore doloribus tempora libero.', 'Iste velit officia maxime mollitia perspiciatis dolor temporibus. Sed qui ex natus eos porro est maiores. Quo officiis veritatis aut quia nam saepe beatae ipsum. Quis doloribus ipsum ea praesentium consectetur dignissimos odit ut. Blanditiis et illo eum quae dicta tempora consequuntur quia.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 9, 3),
(18, 'Occaecati sit ipsum eius laudantium nisi.', 'Rerum quia inventore facere quo occaecati. Qui quod omnis illo repellendus hic. Est soluta qui excepturi unde sit provident. Minima ipsum iure voluptatum pariatur. Doloremque quod explicabo et sit sed.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 9, 3),
(19, 'Cumque quod natus sapiente et et quas dolorem voluptatibus.', 'Et dolorem ex et eveniet numquam consequatur labore repudiandae. In occaecati asperiores aut fugiat velit cum. Asperiores qui facere ipsam qui. Neque id impedit voluptate sint sed. Corporis nihil consequuntur illum est consequuntur minima quia dolores.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 10, 5),
(20, 'Sed assumenda repellat aut doloremque consequuntur quia dicta.', 'Omnis pariatur blanditiis nesciunt quas. Amet consectetur labore architecto quia eligendi. Nobis aut iste voluptas deleniti in repellat autem. Minima qui et eos et. Quia rerum sapiente ea.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 10, 5),
(21, 'Ullam explicabo quas est quas.', 'Cumque ut itaque nemo praesentium expedita id corrupti. Eius voluptatem quia error quidem magnam ut. Omnis repellat iusto nisi aperiam. Incidunt fuga adipisci quam nulla voluptates mollitia eligendi. Consequatur rem aliquid quo exercitationem.', 'https://via.placeholder.com/150', '2023-01-29 19:03:46', '2023-01-29 19:03:46', 10, 5);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Erica Hodkiewicz DDS', 'jenkins.mae@example.net', '2023-01-29 19:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h3bt7U3KLA', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(2, 'Ms. Joanie Wunsch', 'karianne06@example.net', '2023-01-29 19:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z2z9tRbGo1', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(3, 'Lora Stiedemann', 'hettinger.anjali@example.com', '2023-01-29 19:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c7GrRtu3Gm', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(4, 'Dr. Kiel Kertzmann', 'horacio.becker@example.net', '2023-01-29 19:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hwvr3l8OQc', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(5, 'Tate Mertz', 'frami.janiya@example.net', '2023-01-29 19:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vl3mmvLOrf', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(6, 'Jarrod Crona', 'thompson.theresa@example.com', '2023-01-29 19:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'menChBQQ2F', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(7, 'Lula Abbott', 'lenna.connelly@example.net', '2023-01-29 19:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gnWaqz4Zny', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(8, 'Mittie Erdman', 'johnson.kacie@example.org', '2023-01-29 19:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zgp1cKvJqS', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(9, 'Javier Nikolaus', 'nyah03@example.org', '2023-01-29 19:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gAASst8KP0', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(10, 'Bradford Mayer', 'rschmeler@example.com', '2023-01-29 19:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hO400UQALL', '2023-01-29 19:03:46', '2023-01-29 19:03:46'),
(11, 'Admin', 'admin@gmail.com', NULL, '$2y$10$zsxxEVyB8eQ5ZK6g3XS96O2fUTd3qSJqboFAIpoBMl30aOfjmQ3wO', NULL, '2023-01-29 19:10:40', '2023-01-29 19:10:40');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
