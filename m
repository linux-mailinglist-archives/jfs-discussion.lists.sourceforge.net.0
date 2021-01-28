Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 153AF307C84
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 18:32:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l5B9U-0004Sr-DZ; Thu, 28 Jan 2021 17:32:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <djwong@kernel.org>) id 1l5AzX-0005A9-UJ
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 17:21:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S0H2BmiKh1pF2iQjZvNnXwsTUMjukuW2oRWhkUBg/fU=; b=KTouEqST53sitq3hDJKEMw7y4c
 z/mOhww1DNCFPwF6kY3MlBlqId4VqJixfINYFNwTd329+TA5ooTsAU/qPXFnbkAOaBgV2648VJjLm
 lO+hKJ7+/z9ShGafHMOiL45DOi5u/pwgKJBO39V5QZkZhUiORINDuK1k6tB2/2XkP4lY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S0H2BmiKh1pF2iQjZvNnXwsTUMjukuW2oRWhkUBg/fU=; b=MQAclL38SW0R//gWoR+Fkaq4Ak
 HHhH0uS3dPdSYvRajc3IKSjj+TqYG7ivfw3s0BQdz73Pur32kskeMnyovIM5WsnojdghZc9MsyeMz
 ltUXJSpEeuW0IjM/sNNYmbAh9Gc7lmK6X98HV45V5FdhQA3voSYxxw+xqEt3XeiPWjUE=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l5AzC-00G0Gs-Fi
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 17:21:59 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C458764DED;
 Thu, 28 Jan 2021 17:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611854492;
 bh=wN/vYbjN9dGjcLcGdnyPwaVCaPorwnyIWndgrJa+c0Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h4Jj9WXKrn+6FaWHbaqLTTirarAYDVXXbmjKm43Pwyv9CvWF/FCcMNgRPgrx3ByMo
 28fxrNXlVVTo5g3juSTT+7sNpMpJgqbGb4DuHZ8KF3an7+1BY6+nbU2z1+n7iGhwih
 wkXCxISTeJgnl/ygSyJKGjvjcoECGRGnzVlWu3E9jKtn6wt5VP3JuKjRalNmzU1hCy
 4OORtBiU8sk9BK43/E82eZ6NyUeC5IBPMIffBmVCBQkowGnqLXw2BEreMWAztT9vas
 UyeabZv1xy0SE+hBOV4TAGEolTup4mRCss8y10V/Fh7qEXQ2ropSARSls0wsWRnCVn
 9DTzlrlwSUtJA==
Date: Thu, 28 Jan 2021 09:21:32 -0800
From: "Darrick J. Wong" <djwong@kernel.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Message-ID: <20210128172132.GM7698@magnolia>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
 <20210128071133.60335-27-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128071133.60335-27-chaitanya.kulkarni@wdc.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l5AzC-00G0Gs-Fi
X-Mailman-Approved-At: Thu, 28 Jan 2021 17:28:17 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 26/34] xfs: use bio_new in
 xfs_rw_bdev
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

On Wed, Jan 27, 2021 at 11:11:25PM -0800, Chaitanya Kulkarni wrote:
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

Seems fine to me...
Reviewed-by: Darrick J. Wong <djwong@kernel.org>

--D

> ---
>  fs/xfs/xfs_bio_io.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/fs/xfs/xfs_bio_io.c b/fs/xfs/xfs_bio_io.c
> index e2148f2d5d6b..e4644f22ebe6 100644
> --- a/fs/xfs/xfs_bio_io.c
> +++ b/fs/xfs/xfs_bio_io.c
> @@ -26,11 +26,8 @@ xfs_rw_bdev(
>  	if (is_vmalloc && op == REQ_OP_WRITE)
>  		flush_kernel_vmap_range(data, count);
>  
> -	bio = bio_alloc(GFP_KERNEL, bio_max_vecs(left));
> -	bio_set_dev(bio, bdev);
> -	bio->bi_iter.bi_sector = sector;
> -	bio->bi_opf = op | REQ_META | REQ_SYNC;
> -
> +	bio = bio_new(bdev, sector, op, REQ_META | REQ_SYNC, bio_max_vecs(left),
> +		      GFP_KERNEL);
>  	do {
>  		struct page	*page = kmem_to_page(data);
>  		unsigned int	off = offset_in_page(data);
> -- 
> 2.22.1
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
