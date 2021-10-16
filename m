Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F306431B6E
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Oct 2021 15:31:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcSjd-00028j-RW; Mon, 18 Oct 2021 13:31:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <kari.argillander@gmail.com>)
 id 1mbeIk-0006Gl-6L; Sat, 16 Oct 2021 07:40:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yeYbTALLt+81wu8WFfyKx0a33Kod/SnDLZRAl1Frm5U=; b=IfV4VgcDHxaph7econYpW80LZ8
 +76ZSp1N26ln5SgR3xo/9nBYrFA6NH1T0QihO4s7h7trs+DyykmEsfLE8/0Qim1HF+cEtFs0U42ZX
 fStBMMp/fCgBgUwSFeeOnrdxuPVXfnLu/2qQCo571g6tkH0o3b4OjHtna0pkIyQrXpsU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yeYbTALLt+81wu8WFfyKx0a33Kod/SnDLZRAl1Frm5U=; b=X6ZTR3Yc6C6jyVtf7zo9kewKUd
 25+kKNCalbnHj16nxK/2ayUAxiwRF9zE/AD5piu0vpNlvdDmzRIp0yXgWjOCz7ptN67F1UipmJAyl
 5v0MwHkCj0vRfjDC5rTDx+5hdifDUuD5DOG8xE3qx31ph80wMXeszi506m1YXrx4qd9c=;
Received: from mail-lf1-f44.google.com ([209.85.167.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mbeIj-00GdyP-LU; Sat, 16 Oct 2021 07:40:18 +0000
Received: by mail-lf1-f44.google.com with SMTP id x192so16733560lff.12;
 Sat, 16 Oct 2021 00:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yeYbTALLt+81wu8WFfyKx0a33Kod/SnDLZRAl1Frm5U=;
 b=cVnZ6+l+2XB64KtPGPsew2EuurYnsOpcBevvm/IVGVDWp/Lr378D4lUZAb7Ldqn1aU
 Nechfd+nevnKJt8FFrjsUkhQRsZN4OdAe+y/4UgENJDxkcBm3bvvsqVp0+i7kz/ncskC
 VTNCGAMRL2zXauGox8hUYH0e6cLX9YNzHMmZx68OgeqDdd/IPTSNwVgM/hhe43XfbD/A
 Rsr2ngeAq8MwLS8wYqIQpA7q0jGrbmoIHsnPPXNshCS3yofpN7y1D6hLbuTi/3aHu8Hg
 WHPyyYAgwzwuGQtuqb861mn1fmCGJ4Gxolg4kHeKn8eV14e/nwAYLFHNCnrx2jzkQiPm
 sdiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yeYbTALLt+81wu8WFfyKx0a33Kod/SnDLZRAl1Frm5U=;
 b=UtnLf6ieBrtocIOH9cDJZjCDP9lbFqcP0VwuyQ/JaAzIVNQuJ8yhLkQvBf7xi0y1aF
 ganb805EGexF+yWn/m/VbAGibzAwWIHv41xUIiR5EXBYS7XKZ6Ic9dQQitKs41bIy8gx
 vGRUnhYDLnthMZi/UtfjH7S7bCqmnzLcDF3hylxkNjLGDVWKbnkO2/etDj8EH8rzJy/7
 z8bcmm62FQQp9TaTqw9v1bIjksPzGme4/43q+qXadYuknpFNhIzODF8wZ+sGlFoxVU3D
 gVIpT0ukBTjrnWr59CST/FizbVaVVcZEgmCgfKkwvXIkz12vioUF6rKz6SAf3dm78QAF
 W8wA==
X-Gm-Message-State: AOAM533SC5hw6KA8StuyAz9f4NyBdKQYBckelZtZ1rDI5dH6ulgpNMmE
 9TOeK8QaoPAcpkiwP6FY5LM=
X-Google-Smtp-Source: ABdhPJz42JllLibAuMU4PSsWo9d4pmXBI6FidoZzBNe3/Oe9MjVOfwHK8qKnrFH4pZzBziLDXJNmxQ==
X-Received: by 2002:a05:6512:3190:: with SMTP id
 i16mr9019031lfe.224.1634370011048; 
 Sat, 16 Oct 2021 00:40:11 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id a19sm827633ljb.3.2021.10.16.00.40.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Oct 2021 00:40:10 -0700 (PDT)
Date: Sat, 16 Oct 2021 10:40:08 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20211016074008.o6wl7uy3vsrz4v3b@kari-VirtualBox>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-21-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015132643.1621913-21-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 03:26:33PM +0200, Christoph Hellwig
 wrote: > Use the proper helper to read the block device size. > >
 Signed-off-by:
 Christoph Hellwig > --- > fs/ntfs3/super.c | 3 +-- > 1 fi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kari.argillander[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.44 listed in wl.mailspike.net]
X-Headers-End: 1mbeIj-00GdyP-LU
X-Mailman-Approved-At: Mon, 18 Oct 2021 13:31:18 +0000
Subject: Re: [Jfs-discussion] [PATCH 20/30] ntfs3: use bdev_nr_bytes instead
 of open coding it
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

On Fri, Oct 15, 2021 at 03:26:33PM +0200, Christoph Hellwig wrote:
> Use the proper helper to read the block device size.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  fs/ntfs3/super.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/fs/ntfs3/super.c b/fs/ntfs3/super.c
> index 55bbc9200a10e..7ed2cb5e8b1d9 100644
> --- a/fs/ntfs3/super.c
> +++ b/fs/ntfs3/super.c
> @@ -918,7 +918,6 @@ static int ntfs_fill_super(struct super_block *sb, void *data, int silent)
>  	int err;
>  	struct ntfs_sb_info *sbi;
>  	struct block_device *bdev = sb->s_bdev;
> -	struct inode *bd_inode = bdev->bd_inode;

Linus merged latest ntfs3 stuff and this temp variable is not anymore in
upstream. So this patch will conflict. Just so that you know.

>  	struct request_queue *rq = bdev_get_queue(bdev);
>  	struct inode *inode = NULL;
>  	struct ntfs_inode *ni;
> @@ -967,7 +966,7 @@ static int ntfs_fill_super(struct super_block *sb, void *data, int silent)
>  
>  	/* Parse boot. */
>  	err = ntfs_init_from_boot(sb, rq ? queue_logical_block_size(rq) : 512,
> -				  bd_inode->i_size);
> +				  bdev_nr_bytes(bdev));
>  	if (err)
>  		goto out;
>  
> -- 
> 2.30.2
> 
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
