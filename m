Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0BD4325CA
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Oct 2021 19:58:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcWty-0003Fb-Pr; Mon, 18 Oct 2021 17:58:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <axboe@kernel.dk>) id 1mcWdg-0004TY-0n
 for jfs-discussion@lists.sourceforge.net; Mon, 18 Oct 2021 17:41:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+qLOjd0XBTgNB6PyT/azLzYqk1pAiNcBYGjkEFHfKgY=; b=DRfsv32WUl2qKCvJPxTGcviwFV
 1ke+6jR9+LywGFkaei/K+XdBR0AG8gdwE4wFFJS9ypz8/JEtgHQkVYHQPVRVG8VzCQdmdC1i7rMAG
 UJAurCFX3acv1m/XO7S9EzeGQBX6cc16z0bclYbdkxIZ2Q+ISyemv0sjuTCl7Y4cfiwA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+qLOjd0XBTgNB6PyT/azLzYqk1pAiNcBYGjkEFHfKgY=; b=mPy3pBEEUerNAWNoddOYlgHtX2
 qAb2SBWInYHIqLb6AfYGqtbuPZ/MOuERVmGtOOE+AJb/zdMSZnEI2k2iKNoyCuYyxps9JVqDXc9V/
 s87uSAEo+LT959WmnDJ4SU99M5hi/Bx+NfSNavnyO6wdEcKxVbrNgpk/gZ4vFlofVM4g=;
Received: from mail-il1-f175.google.com ([209.85.166.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mcWdf-0006P5-Aa
 for jfs-discussion@lists.sourceforge.net; Mon, 18 Oct 2021 17:41:31 +0000
Received: by mail-il1-f175.google.com with SMTP id s3so15839248ild.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 18 Oct 2021 10:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+qLOjd0XBTgNB6PyT/azLzYqk1pAiNcBYGjkEFHfKgY=;
 b=ZE5P9Htq137UIuHXfQNwUAIKhDIMd9qrsf2igHVAQuchPEiM5CYAiYWAoanrP3BRK5
 +/zJf8ePrK0Jj6aFsn7k0tzQbJ4NIDDMS4qGg/dQVgP7xeIzNbMsehSUes1emc0Oq6i/
 b6ICW3jovK3RTwBeONavI1LGEeT5qNNyH2iVw4n2pIKcaseVQByWqsfKNZFTjpPf5UvA
 tpNrRtk1mQcQRK3VxXa7JqUP3X1jxKk0Yj8Qmo4sy3Salsx557cd92uesoLNkG+Oovkp
 2TGEAb9D58ouYeCPhAyavPDnIjaxSOtdxSB7Ig/cShPev5FkLkYvoHlXTljZivC8+XlA
 UOcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+qLOjd0XBTgNB6PyT/azLzYqk1pAiNcBYGjkEFHfKgY=;
 b=74u2mEoo77Vu+3r4OadfuWcUuNUucIeVEO430hcMG4pzCkEmQ8DSFUoHVnsXvDFniG
 d9gvg3g3LveKiBOzY158NE/pIfegN9gxbp2zM0wd4p4dhNDwoQw3eKcEl18gfz5SiCzq
 mtHpzuwPt/ey9hqdbV6mNFXolM5rqZGzUhJ7QEp0ysmS/qiAsw/xujCBMR8o0TgEHnyQ
 /ho9xbbKUvyM8k0bi3x/cKxDkcvoojlDPEMevs5XUpqjQCQZmhn70pR7ynADu3qxV2J2
 6P3BD43vFQVebfZZ7bagBzVndox05ozsF4ZXF3DF0h7ltbRhtJIBerJSueF8fwKD55A0
 oYXg==
X-Gm-Message-State: AOAM5328qC+tW7NAY6jP9ejYnLUdMjl8nqesnJsSB2MnnMDCTV3tVkGR
 ZQevk9LDF8dETatzfKHTP5xDSA==
X-Google-Smtp-Source: ABdhPJwUV70oibJYf8iw/UP9RU8rrzgiQ8l+cK/EH1A19nZcoh+uCtduaCjXDIwHeCteveuemeWXlw==
X-Received: by 2002:a05:6e02:bf4:: with SMTP id
 d20mr15751146ilu.146.1634578885728; 
 Mon, 18 Oct 2021 10:41:25 -0700 (PDT)
Received: from p1.localdomain ([207.135.234.126])
 by smtp.gmail.com with ESMTPSA id b4sm7342594iot.45.2021.10.18.10.41.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Oct 2021 10:41:25 -0700 (PDT)
From: Jens Axboe <axboe@kernel.dk>
To: Christoph Hellwig <hch@lst.de>
Date: Mon, 18 Oct 2021 11:41:22 -0600
Message-Id: <163457887855.397824.18265513445295974558.b4-ty@kernel.dk>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211018101130.1838532-1-hch@lst.de>
References: <20211018101130.1838532-1-hch@lst.de>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 18 Oct 2021 12:11:00 +0200, Christoph Hellwig wrote:
 > various drivers currently poke directy at the block device inode, which
 > is a bit of a mess. This series cleans up the places that read [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.175 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.175 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mcWdf-0006P5-Aa
X-Mailman-Approved-At: Mon, 18 Oct 2021 17:58:19 +0000
Subject: Re: [Jfs-discussion] don't use ->bd_inode to access the block
 device size v3
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Mike Snitzer <snitzer@redhat.com>, linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, linux-ext4@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 Coly Li <colyli@suse.de>, linux-raid@vger.kernel.org,
 linux-bcache@vger.kernel.org, David Sterba <dsterba@suse.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-ntfs-dev@lists.sourceforge.net,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, 18 Oct 2021 12:11:00 +0200, Christoph Hellwig wrote:
> various drivers currently poke directy at the block device inode, which
> is a bit of a mess.  This series cleans up the places that read the
> block device size to use the proper helpers.  I have separate patches
> for many of the other bd_inode uses, but this series is already big
> enough as-is,
> 
> Changes since v2:
>  - bdev_nr_bytes should return loff_t
>  - fix a commit message typo
>  - drop a redundant note in a commit message
> 
> [...]

Applied, thanks!

[01/30] block: move the SECTOR_SIZE related definitions to blk_types.h
        commit: ac076a376d4c1fa7f01bedad76bab96a981b7464
[02/30] block: add a bdev_nr_bytes helper
        commit: 449c780f68d9adbab2373c996d4341e61c088685
[03/30] bcache: remove bdev_sectors
        commit: 519070e1b8411c93b483fb50511c9d5d7932f62a
[04/30] drbd: use bdev_nr_sectors instead of open coding it
        commit: eee1958b9a7b912fff33319e5737d861703c3a47
[05/30] dm: use bdev_nr_sectors and bdev_nr_bytes instead of open coding them
        commit: 34d7526093779e26c1a281992c7e91662f3afa85
[06/30] md: use bdev_nr_sectors instead of open coding it
        commit: 1a70a0364bbbf29eab22c9fa4b3d71087df940a5
[07/30] nvmet: use bdev_nr_bytes instead of open coding it
        commit: d61ec9eeaa161c6e385f4adebc5d671bc5290687
[08/30] target/iblock: use bdev_nr_bytes instead of open coding it
        commit: 30de91d3df67291093736890b7496620d5025df9
[09/30] fs: use bdev_nr_bytes instead of open coding it in blkdev_max_block
        commit: 011bb9476ef8f9867330e2bce22cf124d034cd33
[10/30] fs: simplify init_page_buffers
        commit: 957c50dd8af9945fde3a3fb6c8baf5d638ef3177
[11/30] affs: use bdev_nr_sectors instead of open coding it
        commit: ec003894a9db3858165dd61fb4cabf9a402aabe0
[12/30] btrfs: use bdev_nr_bytes instead of open coding it
        commit: 167a1c754eae512e45de682e2cb4ea05f080fda5
[13/30] cramfs: use bdev_nr_bytes instead of open coding it
        commit: cdf881e14aa127c7602110d208b3412b1412c1ab
[14/30] fat: use bdev_nr_sectors instead of open coding it
        commit: 4513b8c903782c4f3963172d81414e08f48a0317
[15/30] hfs: use bdev_nr_sectors instead of open coding it
        commit: 311b610de54a52c199e2a129da2c26ad5953edb3
[16/30] hfsplus: use bdev_nr_sectors instead of open coding it
        commit: 03b67c1de5d3b085360f3d6dcf37560f44e8cb4b
[17/30] jfs: use bdev_nr_bytes instead of open coding it
        commit: c1e80b87c3acd52817bea278310900ad2825686c
[18/30] nfs/blocklayout: use bdev_nr_bytes instead of open coding it
        commit: 6b1b53cf606d70dc6dd375aaaab42558cfe7e945
[19/30] nilfs2: use bdev_nr_bytes instead of open coding it
        commit: a24d8bcfd590de5dc4a9e806c9e76558676c2eef
[20/30] ntfs3: use bdev_nr_bytes instead of open coding it
        commit: 9242c8b0b4432b6929b030c729a1edd9d9116d4c
[21/30] pstore/blk: use bdev_nr_bytes instead of open coding it
        commit: 989ab34bd83f075efdae2cf6026cec0507374696
[22/30] reiserfs: use bdev_nr_bytes instead of open coding it
        commit: 8d147b3353c7fd853313521c4f66430d38d66391
[23/30] squashfs: use bdev_nr_bytes instead of open coding it
        commit: 8538360bb42955166d0073ffb6dff6a4b0caa4ec
[24/30] block: use bdev_nr_bytes instead of open coding it in blkdev_fallocate
        commit: 7ad94c3008a3f5e0ff8af1e3ff1c7061955ccec4
[25/30] block: add a sb_bdev_nr_blocks helper
        commit: 5793a4ebc76566fd24d7afdbcefb3311355fd077
[26/30] ext4: use sb_bdev_nr_blocks
        commit: 3a10af74c8f1d390857cf87648573bc4f157e4ca
[27/30] jfs: use sb_bdev_nr_blocks
        commit: cd8ac55f93923c65e18204c99b08a8c4cba3d187
[28/30] ntfs: use sb_bdev_nr_blocks
        commit: 8e2c901e6d1c97bf862514901beaae3e248655d8
[29/30] reiserfs: use sb_bdev_nr_blocks
        commit: 93361ef44a8931d281583ea9c608247fe8127528
[30/30] udf: use sb_bdev_nr_blocks
        commit: ea8befeb35c47cf95012032850fe3f0ec80e5cde

Best regards,
-- 
Jens Axboe




_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
