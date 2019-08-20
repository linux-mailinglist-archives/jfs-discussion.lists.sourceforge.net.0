Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C099B95E96
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Aug 2019 14:32:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1i03Ix-0007Hg-Eg; Tue, 20 Aug 2019 12:32:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <aivazian.tigran@gmail.com>) id 1i039y-0006sT-Cc
 for jfs-discussion@lists.sourceforge.net; Tue, 20 Aug 2019 12:22:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0UMyUpDMp4Y4RG9lBvVE80wlqaE+NFQ1Rn4U8oBgA74=; b=U/86rrRAAd+9F6egsyJ1ZqpXQa
 r+HWk0VV5Kv8rQuD488fbAVl9MABEJrdgTG+kBaM5ycq08hq6v1joyjtLahpvUSQ0vq9pE+KXQ5sz
 /y7rQcbGZ2BgrYWWbqkqTYY/iBA3is2mzq51Db8DYsohebIOYaAvVbQnMq6E+jy1z9X4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0UMyUpDMp4Y4RG9lBvVE80wlqaE+NFQ1Rn4U8oBgA74=; b=Jfi4xr90sUA9xnz522Q+dCGLN5
 qF9DKj0KvWWDnnpCuO6rS5iw0iNvm6j26ddnqjW9kTBXLWx4hF9yoMJ5fNi9SKhrLcUxSx1yknusH
 kUGpG2gC044lNjFHRXlG4xzCk6Qmb3dr9EmL1kn9/IIAKA3VjDOdts3/ZXp84CW4y2JQ=;
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i039w-00DF9P-IZ
 for jfs-discussion@lists.sourceforge.net; Tue, 20 Aug 2019 12:22:46 +0000
Received: by mail-wr1-f65.google.com with SMTP id z11so12176233wrt.4
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 20 Aug 2019 05:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0UMyUpDMp4Y4RG9lBvVE80wlqaE+NFQ1Rn4U8oBgA74=;
 b=ZcvKQljWr2uhTzqHLbeNQpZCR/fYPkyHVLwNatJZSdSxHF2peDtCNPJPyOslgXmyHa
 pzmqdcQynzVocfWGpC0eWqoo8joalB7ENiHftOPVda1K998zDt/IO0bCCEfP0ysDkPUq
 y7eYh7vgPzjY87GpZZ/t9pKJr5oNyCc9MNknPezvwgvtUGG8ybxQ5qU3CudzP/Rw+IW2
 IZQkvmpSy4duei9dbVyzzXe2Fg32mG69NHv5LCn7FAejVuyPd5+g7NGcPyIOQTuE5dAz
 ZHEuZRB2rU8DrzBU+ku4AkuFD/4gsOmrBP3/7zMWh8uqy0C1cJEMKiYj9ydhDK5PO/sl
 yVYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0UMyUpDMp4Y4RG9lBvVE80wlqaE+NFQ1Rn4U8oBgA74=;
 b=Uh4GwCMWPiw+Gwf6rPYgWGbRmEtLCL/MCxyCU9WkPnEVpINEI+ASvsyKYjYeTzOiLL
 /Ol8q7uaJvkiGK2Rf3xQe66LXZTj4FDkW5i/y91xN/1aOwR9/JLIc7e3pnESppJv+w+D
 nYWuQBdXp2TZ0RzoxY6xxvhhTF2yGNmTSysAbBh9jQnPuwPwrvg6lVhr4rj1FFjLHYur
 sUSYfrkWpHqpQiR2/DgErgkwW+YsUxN/H/TIduGm5Ql2VkrNP3BFm9yrCJGSCcDcQhNk
 tbdzIFxr9WiaAM46AWyZR044pPPsA4w8BmkwKR75a4dXFtGJd/s9wxgXDsq7tBwtfjD8
 xq5Q==
X-Gm-Message-State: APjAAAVTk68W+IRLDZsin4OlHt07IOWuHOCiXSHi6LTLiOb4q5YyzQXw
 ZiWh2R/9bHMYfvpARIFXfE4+Kk03jyedReAFZ9c=
X-Google-Smtp-Source: APXvYqwCk7LFMS1FVu6jj+qUZvU/vrFRKFMDMnAO3XMpYFR/+wgzBfeRNqqF3NICibh1CzrIrEa/eLe38RHC9VqyBK8=
X-Received: by 2002:adf:de02:: with SMTP id b2mr34040833wrm.204.1566303757872; 
 Tue, 20 Aug 2019 05:22:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190818165817.32634-1-deepa.kernel@gmail.com>
 <20190818165817.32634-7-deepa.kernel@gmail.com>
In-Reply-To: <20190818165817.32634-7-deepa.kernel@gmail.com>
From: Tigran Aivazian <aivazian.tigran@gmail.com>
Date: Tue, 20 Aug 2019 13:22:26 +0100
Message-ID: <CAK+_RLmK0Vy79giAZnUCmmivvRT+GLZXyiMqBoFB0_Ed1W8BkA@mail.gmail.com>
To: Deepa Dinamani <deepa.kernel@gmail.com>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: squashfs.org.uk]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (aivazian.tigran[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1i039w-00DF9P-IZ
X-Mailman-Approved-At: Tue, 20 Aug 2019 12:32:01 +0000
Subject: Re: [Jfs-discussion] [PATCH v8 06/20] fs: Fill in max and min
 timestamps in superblock
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, al@alarsen.net,
 linux-mtd@lists.infradead.org, darrick.wong@oracle.com, y2038@lists.linaro.org,
 richard@nod.at, codalist@coda.cs.cmu.edu, hch@infradead.org, coda@cs.cmu.edu,
 linux-ext4@vger.kernel.org, salah.triki@gmail.com, dushistov@mail.ru,
 arnd@arndb.de, reiserfs-devel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>, jaharkes@cs.cmu.edu, luisbg@kernel.org,
 nico@fluxnic.net, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, jack@suse.com,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, phillip@squashfs.org.uk,
 dwmw2@infradead.org
Content-Type: multipart/mixed; boundary="===============3304127166569224027=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============3304127166569224027==
Content-Type: multipart/alternative; boundary="0000000000001934b005908b83d2"

--0000000000001934b005908b83d2
Content-Type: text/plain; charset="UTF-8"

I see no problems for BFS.

Acked-By: Tigran Aivazian <aivazian.tigran@gmail.com>

On Sun, 18 Aug 2019 at 17:59, Deepa Dinamani <deepa.kernel@gmail.com> wrote:

> Fill in the appropriate limits to avoid inconsistencies
> in the vfs cached inode times when timestamps are
> outside the permitted range.
>
> Even though some filesystems are read-only, fill in the
> timestamps to reflect the on-disk representation.
>
> Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
> Reviewed-by: Darrick J. Wong <darrick.wong@oracle.com>
> Cc: aivazian.tigran@gmail.com
> Cc: al@alarsen.net
> Cc: coda@cs.cmu.edu
> Cc: darrick.wong@oracle.com
> Cc: dushistov@mail.ru
> Cc: dwmw2@infradead.org
> Cc: hch@infradead.org
> Cc: jack@suse.com
> Cc: jaharkes@cs.cmu.edu
> Cc: luisbg@kernel.org
> Cc: nico@fluxnic.net
> Cc: phillip@squashfs.org.uk
> Cc: richard@nod.at
> Cc: salah.triki@gmail.com
> Cc: shaggy@kernel.org
> Cc: linux-xfs@vger.kernel.org
> Cc: codalist@coda.cs.cmu.edu
> Cc: linux-ext4@vger.kernel.org
> Cc: linux-mtd@lists.infradead.org
> Cc: jfs-discussion@lists.sourceforge.net
> Cc: reiserfs-devel@vger.kernel.org
> ---
>  fs/befs/linuxvfs.c       | 2 ++
>  fs/bfs/inode.c           | 2 ++
>  fs/coda/inode.c          | 3 +++
>  fs/cramfs/inode.c        | 2 ++
>  fs/efs/super.c           | 2 ++
>  fs/ext2/super.c          | 2 ++
>  fs/freevxfs/vxfs_super.c | 2 ++
>  fs/jffs2/fs.c            | 3 +++
>  fs/jfs/super.c           | 2 ++
>  fs/minix/inode.c         | 2 ++
>  fs/qnx4/inode.c          | 2 ++
>  fs/qnx6/inode.c          | 2 ++
>  fs/reiserfs/super.c      | 3 +++
>  fs/romfs/super.c         | 2 ++
>  fs/squashfs/super.c      | 2 ++
>  fs/ufs/super.c           | 7 +++++++
>  fs/xfs/xfs_super.c       | 2 ++
>  17 files changed, 42 insertions(+)
>
> diff --git a/fs/befs/linuxvfs.c b/fs/befs/linuxvfs.c
> index 462d096ff3e9..64cdf4d8e424 100644
> --- a/fs/befs/linuxvfs.c
> +++ b/fs/befs/linuxvfs.c
> @@ -893,6 +893,8 @@ befs_fill_super(struct super_block *sb, void *data,
> int silent)
>         sb_set_blocksize(sb, (ulong) befs_sb->block_size);
>         sb->s_op = &befs_sops;
>         sb->s_export_op = &befs_export_operations;
> +       sb->s_time_min = 0;
> +       sb->s_time_max = 0xffffffffffffll;
>         root = befs_iget(sb, iaddr2blockno(sb, &(befs_sb->root_dir)));
>         if (IS_ERR(root)) {
>                 ret = PTR_ERR(root);
> diff --git a/fs/bfs/inode.c b/fs/bfs/inode.c
> index 5e97bed073d7..f8ce1368218b 100644
> --- a/fs/bfs/inode.c
> +++ b/fs/bfs/inode.c
> @@ -324,6 +324,8 @@ static int bfs_fill_super(struct super_block *s, void
> *data, int silent)
>                 return -ENOMEM;
>         mutex_init(&info->bfs_lock);
>         s->s_fs_info = info;
> +       s->s_time_min = 0;
> +       s->s_time_max = U32_MAX;
>
>         sb_set_blocksize(s, BFS_BSIZE);
>
> diff --git a/fs/coda/inode.c b/fs/coda/inode.c
> index 59a9a29ade0a..e07b5f2ceccc 100644
> --- a/fs/coda/inode.c
> +++ b/fs/coda/inode.c
> @@ -223,6 +223,9 @@ static int coda_fill_super(struct super_block *sb,
> struct fs_context *fc)
>         sb->s_magic = CODA_SUPER_MAGIC;
>         sb->s_op = &coda_super_operations;
>         sb->s_d_op = &coda_dentry_operations;
> +       sb->s_time_gran = 1;
> +       sb->s_time_min = S64_MIN;
> +       sb->s_time_max = S64_MAX;
>
>         error = super_setup_bdi(sb);
>         if (error)
> diff --git a/fs/cramfs/inode.c b/fs/cramfs/inode.c
> index 2ee89a353d64..c304ae8357ef 100644
> --- a/fs/cramfs/inode.c
> +++ b/fs/cramfs/inode.c
> @@ -599,6 +599,8 @@ static int cramfs_finalize_super(struct super_block
> *sb,
>
>         /* Set it all up.. */
>         sb->s_flags |= SB_RDONLY;
> +       sb->s_time_min = 0;
> +       sb->s_time_max = 0;
>         sb->s_op = &cramfs_ops;
>         root = get_cramfs_inode(sb, cramfs_root, 0);
>         if (IS_ERR(root))
> diff --git a/fs/efs/super.c b/fs/efs/super.c
> index 867fc24dee20..4a6ebff2af76 100644
> --- a/fs/efs/super.c
> +++ b/fs/efs/super.c
> @@ -257,6 +257,8 @@ static int efs_fill_super(struct super_block *s, void
> *d, int silent)
>         if (!sb)
>                 return -ENOMEM;
>         s->s_fs_info = sb;
> +       s->s_time_min = 0;
> +       s->s_time_max = U32_MAX;
>
>         s->s_magic              = EFS_SUPER_MAGIC;
>         if (!sb_set_blocksize(s, EFS_BLOCKSIZE)) {
> diff --git a/fs/ext2/super.c b/fs/ext2/super.c
> index 44eb6e7eb492..baa36c6fb71e 100644
> --- a/fs/ext2/super.c
> +++ b/fs/ext2/super.c
> @@ -1002,6 +1002,8 @@ static int ext2_fill_super(struct super_block *sb,
> void *data, int silent)
>
>         sb->s_maxbytes = ext2_max_size(sb->s_blocksize_bits);
>         sb->s_max_links = EXT2_LINK_MAX;
> +       sb->s_time_min = S32_MIN;
> +       sb->s_time_max = S32_MAX;
>
>         if (le32_to_cpu(es->s_rev_level) == EXT2_GOOD_OLD_REV) {
>                 sbi->s_inode_size = EXT2_GOOD_OLD_INODE_SIZE;
> diff --git a/fs/freevxfs/vxfs_super.c b/fs/freevxfs/vxfs_super.c
> index a89f68c3cbed..578a5062706e 100644
> --- a/fs/freevxfs/vxfs_super.c
> +++ b/fs/freevxfs/vxfs_super.c
> @@ -229,6 +229,8 @@ static int vxfs_fill_super(struct super_block *sbp,
> void *dp, int silent)
>
>         sbp->s_op = &vxfs_super_ops;
>         sbp->s_fs_info = infp;
> +       sbp->s_time_min = 0;
> +       sbp->s_time_max = U32_MAX;
>
>         if (!vxfs_try_sb_magic(sbp, silent, 1,
>                         (__force __fs32)cpu_to_le32(VXFS_SUPER_MAGIC))) {
> diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
> index 25736676a456..05fe6cf5f1ac 100644
> --- a/fs/jffs2/fs.c
> +++ b/fs/jffs2/fs.c
> @@ -591,6 +591,9 @@ int jffs2_do_fill_super(struct super_block *sb, struct
> fs_context *fc)
>         sb->s_blocksize = PAGE_SIZE;
>         sb->s_blocksize_bits = PAGE_SHIFT;
>         sb->s_magic = JFFS2_SUPER_MAGIC;
> +       sb->s_time_min = 0;
> +       sb->s_time_max = U32_MAX;
> +
>         if (!sb_rdonly(sb))
>                 jffs2_start_garbage_collect_thread(c);
>         return 0;
> diff --git a/fs/jfs/super.c b/fs/jfs/super.c
> index f4e10cb9f734..b2dc4d1f9dcc 100644
> --- a/fs/jfs/super.c
> +++ b/fs/jfs/super.c
> @@ -503,6 +503,8 @@ static int jfs_fill_super(struct super_block *sb, void
> *data, int silent)
>
>         sb->s_fs_info = sbi;
>         sb->s_max_links = JFS_LINK_MAX;
> +       sb->s_time_min = 0;
> +       sb->s_time_max = U32_MAX;
>         sbi->sb = sb;
>         sbi->uid = INVALID_UID;
>         sbi->gid = INVALID_GID;
> diff --git a/fs/minix/inode.c b/fs/minix/inode.c
> index f96073f25432..7cb5fd38eb14 100644
> --- a/fs/minix/inode.c
> +++ b/fs/minix/inode.c
> @@ -277,6 +277,8 @@ static int minix_fill_super(struct super_block *s,
> void *data, int silent)
>
>         /* set up enough so that it can read an inode */
>         s->s_op = &minix_sops;
> +       s->s_time_min = 0;
> +       s->s_time_max = U32_MAX;
>         root_inode = minix_iget(s, MINIX_ROOT_INO);
>         if (IS_ERR(root_inode)) {
>                 ret = PTR_ERR(root_inode);
> diff --git a/fs/qnx4/inode.c b/fs/qnx4/inode.c
> index 922d083bbc7c..e8da1cde87b9 100644
> --- a/fs/qnx4/inode.c
> +++ b/fs/qnx4/inode.c
> @@ -201,6 +201,8 @@ static int qnx4_fill_super(struct super_block *s, void
> *data, int silent)
>         s->s_op = &qnx4_sops;
>         s->s_magic = QNX4_SUPER_MAGIC;
>         s->s_flags |= SB_RDONLY;        /* Yup, read-only yet */
> +       s->s_time_min = 0;
> +       s->s_time_max = U32_MAX;
>
>         /* Check the superblock signature. Since the qnx4 code is
>            dangerous, we should leave as quickly as possible
> diff --git a/fs/qnx6/inode.c b/fs/qnx6/inode.c
> index 0f8b0ff1ba43..345db56c98fd 100644
> --- a/fs/qnx6/inode.c
> +++ b/fs/qnx6/inode.c
> @@ -429,6 +429,8 @@ static int qnx6_fill_super(struct super_block *s, void
> *data, int silent)
>         s->s_op = &qnx6_sops;
>         s->s_magic = QNX6_SUPER_MAGIC;
>         s->s_flags |= SB_RDONLY;        /* Yup, read-only yet */
> +       s->s_time_min = 0;
> +       s->s_time_max = U32_MAX;
>
>         /* ease the later tree level calculations */
>         sbi = QNX6_SB(s);
> diff --git a/fs/reiserfs/super.c b/fs/reiserfs/super.c
> index ab028ea0e561..d69b4ac0ae2f 100644
> --- a/fs/reiserfs/super.c
> +++ b/fs/reiserfs/super.c
> @@ -1976,6 +1976,9 @@ static int reiserfs_fill_super(struct super_block
> *s, void *data, int silent)
>                 goto error_unlocked;
>         }
>
> +       s->s_time_min = 0;
> +       s->s_time_max = U32_MAX;
> +
>         rs = SB_DISK_SUPER_BLOCK(s);
>         /*
>          * Let's do basic sanity check to verify that underlying device is
> not
> diff --git a/fs/romfs/super.c b/fs/romfs/super.c
> index 4636f867b9e8..338ac8521e65 100644
> --- a/fs/romfs/super.c
> +++ b/fs/romfs/super.c
> @@ -477,6 +477,8 @@ static int romfs_fill_super(struct super_block *sb,
> struct fs_context *fc)
>         sb->s_maxbytes = 0xFFFFFFFF;
>         sb->s_magic = ROMFS_MAGIC;
>         sb->s_flags |= SB_RDONLY | SB_NOATIME;
> +       sb->s_time_min = 0;
> +       sb->s_time_max = 0;
>         sb->s_op = &romfs_super_ops;
>
>  #ifdef CONFIG_ROMFS_ON_MTD
> diff --git a/fs/squashfs/super.c b/fs/squashfs/super.c
> index 0311171af72d..e2d6566371ec 100644
> --- a/fs/squashfs/super.c
> +++ b/fs/squashfs/super.c
> @@ -186,6 +186,8 @@ static int squashfs_fill_super(struct super_block *sb,
> struct fs_context *fc)
>                 (u64) le64_to_cpu(sblk->id_table_start));
>
>         sb->s_maxbytes = MAX_LFS_FILESIZE;
> +       sb->s_time_min = 0;
> +       sb->s_time_max = U32_MAX;
>         sb->s_flags |= SB_RDONLY;
>         sb->s_op = &squashfs_super_ops;
>
> diff --git a/fs/ufs/super.c b/fs/ufs/super.c
> index 4ed0dca52ec8..1da0be667409 100644
> --- a/fs/ufs/super.c
> +++ b/fs/ufs/super.c
> @@ -843,6 +843,10 @@ static int ufs_fill_super(struct super_block *sb,
> void *data, int silent)
>
>         sb->s_maxbytes = MAX_LFS_FILESIZE;
>
> +       sb->s_time_gran = NSEC_PER_SEC;
> +       sb->s_time_min = S32_MIN;
> +       sb->s_time_max = S32_MAX;
> +
>         switch (sbi->s_mount_opt & UFS_MOUNT_UFSTYPE) {
>         case UFS_MOUNT_UFSTYPE_44BSD:
>                 UFSD("ufstype=44bsd\n");
> @@ -861,6 +865,9 @@ static int ufs_fill_super(struct super_block *sb, void
> *data, int silent)
>                 uspi->s_fshift = 9;
>                 uspi->s_sbsize = super_block_size = 1536;
>                 uspi->s_sbbase =  0;
> +               sb->s_time_gran = 1;
> +               sb->s_time_min = S64_MIN;
> +               sb->s_time_max = S64_MAX;
>                 flags |= UFS_TYPE_UFS2 | UFS_DE_44BSD | UFS_UID_44BSD |
> UFS_ST_44BSD | UFS_CG_44BSD;
>                 break;
>
> diff --git a/fs/xfs/xfs_super.c b/fs/xfs/xfs_super.c
> index f9450235533c..d3b10900fc24 100644
> --- a/fs/xfs/xfs_super.c
> +++ b/fs/xfs/xfs_super.c
> @@ -1663,6 +1663,8 @@ xfs_fs_fill_super(
>         sb->s_maxbytes = xfs_max_file_offset(sb->s_blocksize_bits);
>         sb->s_max_links = XFS_MAXLINK;
>         sb->s_time_gran = 1;
> +       sb->s_time_min = S32_MIN;
> +       sb->s_time_max = S32_MAX;
>         sb->s_iflags |= SB_I_CGROUPWB;
>
>         set_posix_acl_flag(sb);
> --
> 2.17.1
>
>

--0000000000001934b005908b83d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I see no problems for BFS.<div><br></div><div>Acked-By: Ti=
gran Aivazian &lt;<a href=3D"mailto:aivazian.tigran@gmail.com">aivazian.tig=
ran@gmail.com</a>&gt;</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Sun, 18 Aug 2019 at 17:59, Deepa Dinamani &lt=
;<a href=3D"mailto:deepa.kernel@gmail.com">deepa.kernel@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Fill in th=
e appropriate limits to avoid inconsistencies<br>
in the vfs cached inode times when timestamps are<br>
outside the permitted range.<br>
<br>
Even though some filesystems are read-only, fill in the<br>
timestamps to reflect the on-disk representation.<br>
<br>
Signed-off-by: Deepa Dinamani &lt;<a href=3D"mailto:deepa.kernel@gmail.com"=
 target=3D"_blank">deepa.kernel@gmail.com</a>&gt;<br>
Reviewed-by: Darrick J. Wong &lt;<a href=3D"mailto:darrick.wong@oracle.com"=
 target=3D"_blank">darrick.wong@oracle.com</a>&gt;<br>
Cc: <a href=3D"mailto:aivazian.tigran@gmail.com" target=3D"_blank">aivazian=
.tigran@gmail.com</a><br>
Cc: <a href=3D"mailto:al@alarsen.net" target=3D"_blank">al@alarsen.net</a><=
br>
Cc: <a href=3D"mailto:coda@cs.cmu.edu" target=3D"_blank">coda@cs.cmu.edu</a=
><br>
Cc: <a href=3D"mailto:darrick.wong@oracle.com" target=3D"_blank">darrick.wo=
ng@oracle.com</a><br>
Cc: <a href=3D"mailto:dushistov@mail.ru" target=3D"_blank">dushistov@mail.r=
u</a><br>
Cc: <a href=3D"mailto:dwmw2@infradead.org" target=3D"_blank">dwmw2@infradea=
d.org</a><br>
Cc: <a href=3D"mailto:hch@infradead.org" target=3D"_blank">hch@infradead.or=
g</a><br>
Cc: <a href=3D"mailto:jack@suse.com" target=3D"_blank">jack@suse.com</a><br=
>
Cc: <a href=3D"mailto:jaharkes@cs.cmu.edu" target=3D"_blank">jaharkes@cs.cm=
u.edu</a><br>
Cc: <a href=3D"mailto:luisbg@kernel.org" target=3D"_blank">luisbg@kernel.or=
g</a><br>
Cc: <a href=3D"mailto:nico@fluxnic.net" target=3D"_blank">nico@fluxnic.net<=
/a><br>
Cc: <a href=3D"mailto:phillip@squashfs.org.uk" target=3D"_blank">phillip@sq=
uashfs.org.uk</a><br>
Cc: <a href=3D"mailto:richard@nod.at" target=3D"_blank">richard@nod.at</a><=
br>
Cc: <a href=3D"mailto:salah.triki@gmail.com" target=3D"_blank">salah.triki@=
gmail.com</a><br>
Cc: <a href=3D"mailto:shaggy@kernel.org" target=3D"_blank">shaggy@kernel.or=
g</a><br>
Cc: <a href=3D"mailto:linux-xfs@vger.kernel.org" target=3D"_blank">linux-xf=
s@vger.kernel.org</a><br>
Cc: <a href=3D"mailto:codalist@coda.cs.cmu.edu" target=3D"_blank">codalist@=
coda.cs.cmu.edu</a><br>
Cc: <a href=3D"mailto:linux-ext4@vger.kernel.org" target=3D"_blank">linux-e=
xt4@vger.kernel.org</a><br>
Cc: <a href=3D"mailto:linux-mtd@lists.infradead.org" target=3D"_blank">linu=
x-mtd@lists.infradead.org</a><br>
Cc: <a href=3D"mailto:jfs-discussion@lists.sourceforge.net" target=3D"_blan=
k">jfs-discussion@lists.sourceforge.net</a><br>
Cc: <a href=3D"mailto:reiserfs-devel@vger.kernel.org" target=3D"_blank">rei=
serfs-devel@vger.kernel.org</a><br>
---<br>
=C2=A0fs/befs/linuxvfs.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
=C2=A0fs/bfs/inode.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
=C2=A0fs/coda/inode.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 3 +++<br>
=C2=A0fs/cramfs/inode.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
=C2=A0fs/efs/super.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
=C2=A0fs/ext2/super.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
=C2=A0fs/freevxfs/vxfs_super.c | 2 ++<br>
=C2=A0fs/jffs2/fs.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 3 +++<br>
=C2=A0fs/jfs/super.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
=C2=A0fs/minix/inode.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
=C2=A0fs/qnx4/inode.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
=C2=A0fs/qnx6/inode.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
=C2=A0fs/reiserfs/super.c=C2=A0 =C2=A0 =C2=A0 | 3 +++<br>
=C2=A0fs/romfs/super.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
=C2=A0fs/squashfs/super.c=C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
=C2=A0fs/ufs/super.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 7 +++++++<br=
>
=C2=A0fs/xfs/xfs_super.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
=C2=A017 files changed, 42 insertions(+)<br>
<br>
diff --git a/fs/befs/linuxvfs.c b/fs/befs/linuxvfs.c<br>
index 462d096ff3e9..64cdf4d8e424 100644<br>
--- a/fs/befs/linuxvfs.c<br>
+++ b/fs/befs/linuxvfs.c<br>
@@ -893,6 +893,8 @@ befs_fill_super(struct super_block *sb, void *data, int=
 silent)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb_set_blocksize(sb, (ulong) befs_sb-&gt;block_=
size);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_op =3D &amp;befs_sops;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_export_op =3D &amp;befs_export_operati=
ons;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_min =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_max =3D 0xffffffffffffll;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 root =3D befs_iget(sb, iaddr2blockno(sb, &amp;(=
befs_sb-&gt;root_dir)));<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (IS_ERR(root)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D PTR_ERR(roo=
t);<br>
diff --git a/fs/bfs/inode.c b/fs/bfs/inode.c<br>
index 5e97bed073d7..f8ce1368218b 100644<br>
--- a/fs/bfs/inode.c<br>
+++ b/fs/bfs/inode.c<br>
@@ -324,6 +324,8 @@ static int bfs_fill_super(struct super_block *s, void *=
data, int silent)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -ENOMEM;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_init(&amp;info-&gt;bfs_lock);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 s-&gt;s_fs_info =3D info;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;s_time_min =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;s_time_max =3D U32_MAX;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb_set_blocksize(s, BFS_BSIZE);<br>
<br>
diff --git a/fs/coda/inode.c b/fs/coda/inode.c<br>
index 59a9a29ade0a..e07b5f2ceccc 100644<br>
--- a/fs/coda/inode.c<br>
+++ b/fs/coda/inode.c<br>
@@ -223,6 +223,9 @@ static int coda_fill_super(struct super_block *sb, stru=
ct fs_context *fc)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_magic =3D CODA_SUPER_MAGIC;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_op =3D &amp;coda_super_operations;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_d_op =3D &amp;coda_dentry_operations;<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_gran =3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_min =3D S64_MIN;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_max =3D S64_MAX;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 error =3D super_setup_bdi(sb);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (error)<br>
diff --git a/fs/cramfs/inode.c b/fs/cramfs/inode.c<br>
index 2ee89a353d64..c304ae8357ef 100644<br>
--- a/fs/cramfs/inode.c<br>
+++ b/fs/cramfs/inode.c<br>
@@ -599,6 +599,8 @@ static int cramfs_finalize_super(struct super_block *sb=
,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Set it all up.. */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_flags |=3D SB_RDONLY;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_min =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_max =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_op =3D &amp;cramfs_ops;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 root =3D get_cramfs_inode(sb, cramfs_root, 0);<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (IS_ERR(root))<br>
diff --git a/fs/efs/super.c b/fs/efs/super.c<br>
index 867fc24dee20..4a6ebff2af76 100644<br>
--- a/fs/efs/super.c<br>
+++ b/fs/efs/super.c<br>
@@ -257,6 +257,8 @@ static int efs_fill_super(struct super_block *s, void *=
d, int silent)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!sb)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -ENOMEM;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 s-&gt;s_fs_info =3D sb;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;s_time_min =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;s_time_max =3D U32_MAX;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 s-&gt;s_magic=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =3D EFS_SUPER_MAGIC;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!sb_set_blocksize(s, EFS_BLOCKSIZE)) {<br>
diff --git a/fs/ext2/super.c b/fs/ext2/super.c<br>
index 44eb6e7eb492..baa36c6fb71e 100644<br>
--- a/fs/ext2/super.c<br>
+++ b/fs/ext2/super.c<br>
@@ -1002,6 +1002,8 @@ static int ext2_fill_super(struct super_block *sb, vo=
id *data, int silent)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_maxbytes =3D ext2_max_size(sb-&gt;s_bl=
ocksize_bits);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_max_links =3D EXT2_LINK_MAX;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_min =3D S32_MIN;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_max =3D S32_MAX;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (le32_to_cpu(es-&gt;s_rev_level) =3D=3D EXT2=
_GOOD_OLD_REV) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sbi-&gt;s_inode_siz=
e =3D EXT2_GOOD_OLD_INODE_SIZE;<br>
diff --git a/fs/freevxfs/vxfs_super.c b/fs/freevxfs/vxfs_super.c<br>
index a89f68c3cbed..578a5062706e 100644<br>
--- a/fs/freevxfs/vxfs_super.c<br>
+++ b/fs/freevxfs/vxfs_super.c<br>
@@ -229,6 +229,8 @@ static int vxfs_fill_super(struct super_block *sbp, voi=
d *dp, int silent)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sbp-&gt;s_op =3D &amp;vxfs_super_ops;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sbp-&gt;s_fs_info =3D infp;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sbp-&gt;s_time_min =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sbp-&gt;s_time_max =3D U32_MAX;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!vxfs_try_sb_magic(sbp, silent, 1,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 (__force __fs32)cpu_to_le32(VXFS_SUPER_MAGIC))) {<br>
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c<br>
index 25736676a456..05fe6cf5f1ac 100644<br>
--- a/fs/jffs2/fs.c<br>
+++ b/fs/jffs2/fs.c<br>
@@ -591,6 +591,9 @@ int jffs2_do_fill_super(struct super_block *sb, struct =
fs_context *fc)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_blocksize =3D PAGE_SIZE;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_blocksize_bits =3D PAGE_SHIFT;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_magic =3D JFFS2_SUPER_MAGIC;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_min =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_max =3D U32_MAX;<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!sb_rdonly(sb))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 jffs2_start_garbage=
_collect_thread(c);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
diff --git a/fs/jfs/super.c b/fs/jfs/super.c<br>
index f4e10cb9f734..b2dc4d1f9dcc 100644<br>
--- a/fs/jfs/super.c<br>
+++ b/fs/jfs/super.c<br>
@@ -503,6 +503,8 @@ static int jfs_fill_super(struct super_block *sb, void =
*data, int silent)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_fs_info =3D sbi;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_max_links =3D JFS_LINK_MAX;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_min =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_max =3D U32_MAX;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sbi-&gt;sb =3D sb;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sbi-&gt;uid =3D INVALID_UID;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sbi-&gt;gid =3D INVALID_GID;<br>
diff --git a/fs/minix/inode.c b/fs/minix/inode.c<br>
index f96073f25432..7cb5fd38eb14 100644<br>
--- a/fs/minix/inode.c<br>
+++ b/fs/minix/inode.c<br>
@@ -277,6 +277,8 @@ static int minix_fill_super(struct super_block *s, void=
 *data, int silent)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* set up enough so that it can read an inode *=
/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 s-&gt;s_op =3D &amp;minix_sops;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;s_time_min =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;s_time_max =3D U32_MAX;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 root_inode =3D minix_iget(s, MINIX_ROOT_INO);<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (IS_ERR(root_inode)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D PTR_ERR(roo=
t_inode);<br>
diff --git a/fs/qnx4/inode.c b/fs/qnx4/inode.c<br>
index 922d083bbc7c..e8da1cde87b9 100644<br>
--- a/fs/qnx4/inode.c<br>
+++ b/fs/qnx4/inode.c<br>
@@ -201,6 +201,8 @@ static int qnx4_fill_super(struct super_block *s, void =
*data, int silent)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 s-&gt;s_op =3D &amp;qnx4_sops;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 s-&gt;s_magic =3D QNX4_SUPER_MAGIC;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 s-&gt;s_flags |=3D SB_RDONLY;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /* Yup, read-only yet */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;s_time_min =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;s_time_max =3D U32_MAX;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Check the superblock signature. Since the qn=
x4 code is<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dangerous, we should leave as quic=
kly as possible<br>
diff --git a/fs/qnx6/inode.c b/fs/qnx6/inode.c<br>
index 0f8b0ff1ba43..345db56c98fd 100644<br>
--- a/fs/qnx6/inode.c<br>
+++ b/fs/qnx6/inode.c<br>
@@ -429,6 +429,8 @@ static int qnx6_fill_super(struct super_block *s, void =
*data, int silent)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 s-&gt;s_op =3D &amp;qnx6_sops;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 s-&gt;s_magic =3D QNX6_SUPER_MAGIC;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 s-&gt;s_flags |=3D SB_RDONLY;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /* Yup, read-only yet */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;s_time_min =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;s_time_max =3D U32_MAX;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* ease the later tree level calculations */<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sbi =3D QNX6_SB(s);<br>
diff --git a/fs/reiserfs/super.c b/fs/reiserfs/super.c<br>
index ab028ea0e561..d69b4ac0ae2f 100644<br>
--- a/fs/reiserfs/super.c<br>
+++ b/fs/reiserfs/super.c<br>
@@ -1976,6 +1976,9 @@ static int reiserfs_fill_super(struct super_block *s,=
 void *data, int silent)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto error_unlocked=
;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;s_time_min =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;s_time_max =3D U32_MAX;<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rs =3D SB_DISK_SUPER_BLOCK(s);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /*<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* Let&#39;s do basic sanity check to veri=
fy that underlying device is not<br>
diff --git a/fs/romfs/super.c b/fs/romfs/super.c<br>
index 4636f867b9e8..338ac8521e65 100644<br>
--- a/fs/romfs/super.c<br>
+++ b/fs/romfs/super.c<br>
@@ -477,6 +477,8 @@ static int romfs_fill_super(struct super_block *sb, str=
uct fs_context *fc)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_maxbytes =3D 0xFFFFFFFF;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_magic =3D ROMFS_MAGIC;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_flags |=3D SB_RDONLY | SB_NOATIME;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_min =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_max =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_op =3D &amp;romfs_super_ops;<br>
<br>
=C2=A0#ifdef CONFIG_ROMFS_ON_MTD<br>
diff --git a/fs/squashfs/super.c b/fs/squashfs/super.c<br>
index 0311171af72d..e2d6566371ec 100644<br>
--- a/fs/squashfs/super.c<br>
+++ b/fs/squashfs/super.c<br>
@@ -186,6 +186,8 @@ static int squashfs_fill_super(struct super_block *sb, =
struct fs_context *fc)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (u64) le64_to_cpu(s=
blk-&gt;id_table_start));<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_maxbytes =3D MAX_LFS_FILESIZE;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_min =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_max =3D U32_MAX;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_flags |=3D SB_RDONLY;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_op =3D &amp;squashfs_super_ops;<br>
<br>
diff --git a/fs/ufs/super.c b/fs/ufs/super.c<br>
index 4ed0dca52ec8..1da0be667409 100644<br>
--- a/fs/ufs/super.c<br>
+++ b/fs/ufs/super.c<br>
@@ -843,6 +843,10 @@ static int ufs_fill_super(struct super_block *sb, void=
 *data, int silent)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_maxbytes =3D MAX_LFS_FILESIZE;<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_gran =3D NSEC_PER_SEC;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_min =3D S32_MIN;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_max =3D S32_MAX;<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 switch (sbi-&gt;s_mount_opt &amp; UFS_MOUNT_UFS=
TYPE) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case UFS_MOUNT_UFSTYPE_44BSD:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UFSD(&quot;ufstype=
=3D44bsd\n&quot;);<br>
@@ -861,6 +865,9 @@ static int ufs_fill_super(struct super_block *sb, void =
*data, int silent)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uspi-&gt;s_fshift =
=3D 9;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uspi-&gt;s_sbsize =
=3D super_block_size =3D 1536;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uspi-&gt;s_sbbase =
=3D=C2=A0 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_gran =
=3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_min =
=3D S64_MIN;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_max =
=3D S64_MAX;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 flags |=3D UFS_TYPE=
_UFS2 | UFS_DE_44BSD | UFS_UID_44BSD | UFS_ST_44BSD | UFS_CG_44BSD;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
diff --git a/fs/xfs/xfs_super.c b/fs/xfs/xfs_super.c<br>
index f9450235533c..d3b10900fc24 100644<br>
--- a/fs/xfs/xfs_super.c<br>
+++ b/fs/xfs/xfs_super.c<br>
@@ -1663,6 +1663,8 @@ xfs_fs_fill_super(<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_maxbytes =3D xfs_max_file_offset(sb-&g=
t;s_blocksize_bits);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_max_links =3D XFS_MAXLINK;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_time_gran =3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_min =3D S32_MIN;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sb-&gt;s_time_max =3D S32_MAX;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb-&gt;s_iflags |=3D SB_I_CGROUPWB;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 set_posix_acl_flag(sb);<br>
-- <br>
2.17.1<br>
<br>
</blockquote></div>

--0000000000001934b005908b83d2--


--===============3304127166569224027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3304127166569224027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============3304127166569224027==--

