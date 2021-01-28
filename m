Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA22307C83
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 18:32:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l5B9U-0004T1-FQ; Thu, 28 Jan 2021 17:32:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <djwong@kernel.org>) id 1l5Azs-0001bw-TG
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 17:22:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0FDPb0NW5YTvYv7CneoxBclR8mpdnR50r12wFW2vXKc=; b=D5qOjT66+vVpEvwhtLzifOH0La
 MKIh4HL0VIqYiiZO7AC6wLFGXT6lw8ntc6fXPy+XXQ6WjqKLPOHAvbkcWiq4ftKq7B4IS5m+mNGId
 jFcyR+8DkPojt3Cn8nhTlsmWzYSYPF9Z4oNVpajXdb3//kkf1UcWPwWtvuPgF14oV9e0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0FDPb0NW5YTvYv7CneoxBclR8mpdnR50r12wFW2vXKc=; b=WbwhnU9edqQ+vBGKXV9iukyGWp
 573iW8PZL+Cqup21UhfItwUi3z8jNftVEI+/uV/2uarezVy5ELpuDzp0VtLV8ot0Z7t3jgnUwPfpn
 6Womui+M6ZkTESQIPpz562ny4qfLkDVkC920LfpzCxeQGLWQynPMd8mdOplaTyceaqXQ=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l5AzV-0008Um-Gs
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 17:22:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 14BA564E14;
 Thu, 28 Jan 2021 17:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611854512;
 bh=3wcbDXIsfKokQbmfUCYjGrgS3GF5z08Qdptdga5fUN4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QWOP7EPqmN6b3MiW9yEAgNNtNjSRtrXyFEpjaAGYBZII1sVNYI1YtSMwAvt9fuQBa
 67CiLo3o5RvfcoATyHS1j02NITEEA3iqExwlLXezGs5RMp4QWJbqX9Dn+nc6m+I4rS
 ryQ81C45k5DR4mIk6Zm2DTepJlJx7ughkR/Vt0AUwH3+rYDSQLjDOWM7DJGp0ETUnl
 xurghfp/gRCwfqedNMDMPHZbg7F0alqw1H/gKUa0SjDmFnvopggMP4TjgUC2t6LP2S
 1ujXulQBT2zqjOQLupxjXSsgT0HMqyI+WyoITl6y/0OvHf8iHp4HzyLmR4yVI/FSxp
 yznAeENjD3n6w==
Date: Thu, 28 Jan 2021 09:21:51 -0800
From: "Darrick J. Wong" <djwong@kernel.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Message-ID: <20210128172151.GN7698@magnolia>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
 <20210128071133.60335-28-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128071133.60335-28-chaitanya.kulkarni@wdc.com>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l5AzV-0008Um-Gs
X-Mailman-Approved-At: Thu, 28 Jan 2021 17:28:17 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 27/34] xfs: use bio_new in
 xfs_buf_ioapply_map
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 gustavoars@kernel.org, sergey.senozhatsky.work@gmail.com, snitzer@redhat.com,
 tiwai@suse.de, linux-nvme@lists.infradead.org, philipp.reisner@linbit.com,
 linux-mm@kvack.org, dm-devel@redhat.com, target-devel@vger.kernel.org,
 pavel@ucw.cz, alex.shi@linux.alibaba.com, hch@lst.de, agk@redhat.com,
 drbd-dev@lists.linbit.com, naohiro.aota@wdc.com, linux-nilfs@vger.kernel.org,
 sagi@grimberg.me, linux-scsi@vger.kernel.org, mark@fasheh.com,
 konrad.wilk@oracle.com, osandov@fb.com, ebiggers@kernel.org,
 xen-devel@lists.xenproject.org, ngupta@vflare.org, len.brown@intel.com,
 linux-pm@vger.kernel.org, hare@suse.de, ming.lei@redhat.com,
 linux-block@vger.kernel.org, tj@kernel.org, linux-fscrypt@vger.kernel.org,
 viro@zeniv.linux.org.uk, jefflexu@linux.alibaba.com, jaegeuk@kernel.org,
 jlbec@evilplan.org, konishi.ryusuke@gmail.com, bvanassche@acm.org,
 axboe@kernel.dk, damien.lemoal@wdc.com, tytso@mit.edu,
 akpm@linux-foundation.org, martin.petersen@oracle.com,
 joseph.qi@linux.alibaba.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, minchan@kernel.org, linux-fsdevel@vger.kernel.org,
 lars.ellenberg@linbit.com, jth@kernel.org, asml.silence@gmail.com,
 ocfs2-devel@oss.oracle.com, roger.pau@citrix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Jan 27, 2021 at 11:11:26PM -0800, Chaitanya Kulkarni wrote:
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

Reviewed-by: Darrick J. Wong <djwong@kernel.org>

--D

> ---
>  fs/xfs/xfs_buf.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/xfs/xfs_buf.c b/fs/xfs/xfs_buf.c
> index f8400bbd6473..3ff6235e4f94 100644
> --- a/fs/xfs/xfs_buf.c
> +++ b/fs/xfs/xfs_buf.c
> @@ -1507,12 +1507,10 @@ xfs_buf_ioapply_map(
>  	atomic_inc(&bp->b_io_remaining);
>  	nr_pages = min(total_nr_pages, BIO_MAX_PAGES);
>  
> -	bio = bio_alloc(GFP_NOIO, nr_pages);
> -	bio_set_dev(bio, bp->b_target->bt_bdev);
> -	bio->bi_iter.bi_sector = sector;
> +	bio = bio_new(bp->b_target->bt_bdev, sector, op, 0, nr_pages,
> +		      GFP_NOIO);
>  	bio->bi_end_io = xfs_buf_bio_end_io;
>  	bio->bi_private = bp;
> -	bio->bi_opf = op;
>  
>  	for (; size && nr_pages; nr_pages--, page_index++) {
>  		int	rbytes, nbytes = PAGE_SIZE - offset;
> -- 
> 2.22.1
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
