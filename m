Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CBA307BE1
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 18:13:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l5ArH-0001HO-2L; Thu, 28 Jan 2021 17:13:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1l5ASw-0003gX-W5
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 16:48:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ok1YlK16MaIquA7ZYUHxK/CMaFxxxwNWazaMAgFieLU=; b=U0EO25dKrCcos4eub+xXwuvV+e
 JqzyRNoHaQlHkdYKRpKjQG7J9/8e5Gp9jmZGryTHoqt75nwu3wnCWZ4pzv/a+s2i2HEb7Tad1r4tF
 ouwb+J3H6FWA3q3Vbi7xJX2aMKrGrvG1bXHHoW4I1o0vouXQ9xUWx6CAkfl1aDCvopoI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ok1YlK16MaIquA7ZYUHxK/CMaFxxxwNWazaMAgFieLU=; b=Bb371xEGOJM6vn8BdreEB+fHmj
 Hf1PbBma0s54TEWTvr2hR9y43PhWNDRgliXVPajaFxUsfHwtHHKP1Ig9fg51jdxBnV/L/uCeOZpI4
 gUSAs9xjCPUAtDANTDtBIplOJ0ytD6CvEtctKib5QrUqg4jhqYtyqsIxAotVOnU43Nh8=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l5ASg-000sIh-7H
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 16:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ok1YlK16MaIquA7ZYUHxK/CMaFxxxwNWazaMAgFieLU=; b=vuOaMGbyB7/+Dg91fNUqvgBiBD
 4apxS7jU5nU9b/DveQFuS18fYHTQPOpBZxMrv3tCqxWOuQg228bSNlkmvJ1gQneLnOfM3WL1ObNGi
 MTuz8xXL3LKzE+DH7errCMxepgPQ3Thh2HpLy2Nat9DQOLy35B1FC3UkIZuvmKmdZzwX86t+WV5Mk
 /pCa23DxPP5a3Rlkwfqrn59vty95NQBRWyuZpKNZRkjNLQlQ2KJrMub6IYLsf3IL2tz3nuZRbVWe7
 TKvbqzYB3UBc6MLrjn2HVQGE6rKRMshHOwu50Myfj/erONbRzfW9chvly9np7Q4o+a4JR4iRTNdIG
 5mKhGc+Q==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l5ARp-008hlF-CH; Thu, 28 Jan 2021 16:47:23 +0000
Date: Thu, 28 Jan 2021 16:47:09 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Message-ID: <20210128164709.GZ308988@casper.infradead.org>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
 <20210128071133.60335-3-chaitanya.kulkarni@wdc.com>
 <BL0PR04MB6514C554B4AC96866BC1B16FE7BA9@BL0PR04MB6514.namprd04.prod.outlook.com>
 <DM6PR04MB4972DA86892CF4531440064F86BA9@DM6PR04MB4972.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR04MB4972DA86892CF4531440064F86BA9@DM6PR04MB4972.namprd04.prod.outlook.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l5ASg-000sIh-7H
X-Mailman-Approved-At: Thu, 28 Jan 2021 17:13:25 +0000
Subject: Re: [Jfs-discussion] [Ocfs2-devel] [RFC PATCH 02/34] block:
 introduce and use bio_new
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
Cc: "shaggy@kernel.org" <shaggy@kernel.org>,
 "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 "sergey.senozhatsky.work@gmail.com" <sergey.senozhatsky.work@gmail.com>,
 "snitzer@redhat.com" <snitzer@redhat.com>, "tiwai@suse.de" <tiwai@suse.de>,
 "djwong@kernel.org" <djwong@kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "dm-devel@redhat.com" <dm-devel@redhat.com>,
 "target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
 "pavel@ucw.cz" <pavel@ucw.cz>,
 "alex.shi@linux.alibaba.com" <alex.shi@linux.alibaba.com>,
 "osandov@fb.com" <osandov@fb.com>, "agk@redhat.com" <agk@redhat.com>,
 "drbd-dev@lists.linbit.com" <drbd-dev@lists.linbit.com>,
 Naohiro Aota <Naohiro.Aota@wdc.com>,
 "linux-nilfs@vger.kernel.org" <linux-nilfs@vger.kernel.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "konrad.wilk@oracle.com" <konrad.wilk@oracle.com>,
 "roger.pau@citrix.com" <roger.pau@citrix.com>,
 "ebiggers@kernel.org" <ebiggers@kernel.org>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "philipp.reisner@linbit.com" <philipp.reisner@linbit.com>,
 "ngupta@vflare.org" <ngupta@vflare.org>,
 "len.brown@intel.com" <len.brown@intel.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "ming.lei@redhat.com" <ming.lei@redhat.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "tj@kernel.org" <tj@kernel.org>,
 "linux-fscrypt@vger.kernel.org" <linux-fscrypt@vger.kernel.org>,
 "hare@suse.de" <hare@suse.de>,
 "jefflexu@linux.alibaba.com" <jefflexu@linux.alibaba.com>,
 "jaegeuk@kernel.org" <jaegeuk@kernel.org>,
 "konishi.ryusuke@gmail.com" <konishi.ryusuke@gmail.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>, "axboe@kernel.dk" <axboe@kernel.dk>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, "tytso@mit.edu" <tytso@mit.edu>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-xfs@vger.kernel.org" <linux-xfs@vger.kernel.org>,
 "minchan@kernel.org" <minchan@kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "lars.ellenberg@linbit.com" <lars.ellenberg@linbit.com>,
 "jth@kernel.org" <jth@kernel.org>,
 "asml.silence@gmail.com" <asml.silence@gmail.com>,
 "ocfs2-devel@oss.oracle.com" <ocfs2-devel@oss.oracle.com>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


FYI your email is completely unreadable to those not using html.
I can't tell what you wrote and what Damien wrote.

On Thu, Jan 28, 2021 at 08:33:10AM +0000, Chaitanya Kulkarni wrote:
> On 1/27/21 11:21 PM, Damien Le Moal wrote:
> 
> On 2021/01/28 16:12, Chaitanya Kulkarni wrote:
> 
> 
> Introduce bio_new() helper and use it in blk-lib.c to allocate and
> initialize various non-optional or semi-optional members of the bio
> along with bio allocation done with bio_alloc(). Here we also calmp the
> max_bvecs for bio with BIO_MAX_PAGES before we pass to bio_alloc().
> 
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com><mailto:chaitanya.kulkarni@wdc.com>
> ---
>  block/blk-lib.c     |  6 +-----
>  include/linux/bio.h | 25 +++++++++++++++++++++++++
>  2 files changed, 26 insertions(+), 5 deletions(-)
> 
> diff --git a/block/blk-lib.c b/block/blk-lib.c
> index fb486a0bdb58..ec29415f00dd 100644
> --- a/block/blk-lib.c
> +++ b/block/blk-lib.c
> @@ -14,17 +14,13 @@ struct bio *blk_next_bio(struct bio *bio, struct block_device *bdev,
>                         sector_t sect, unsigned op, unsigned opf,
>                         unsigned int nr_pages, gfp_t gfp)
>  {
> -       struct bio *new = bio_alloc(gfp, nr_pages);
> +       struct bio *new = bio_new(bdev, sect, op, opf, gfp, nr_pages);
> 
>         if (bio) {
>                 bio_chain(bio, new);
>                 submit_bio(bio);
>         }
> 
> -       new->bi_iter.bi_sector = sect;
> -       bio_set_dev(new, bdev);
> -       bio_set_op_attrs(new, op, opf);
> -
>         return new;
>  }
> 
> diff --git a/include/linux/bio.h b/include/linux/bio.h
> index c74857cf1252..2a09ba100546 100644
> --- a/include/linux/bio.h
> +++ b/include/linux/bio.h
> @@ -826,5 +826,30 @@ static inline void bio_set_polled(struct bio *bio, struct kiocb *kiocb)
>         if (!is_sync_kiocb(kiocb))
>                 bio->bi_opf |= REQ_NOWAIT;
>  }
> +/**
> + * bio_new -   allcate and initialize new bio
> + * @bdev:      blockdev to issue discard for
> + * @sector:    start sector
> + * @op:                REQ_OP_XXX from enum req_opf
> + * @op_flags:  REQ_XXX from enum req_flag_bits
> + * @max_bvecs: maximum bvec to be allocated for this bio
> + * @gfp_mask:  memory allocation flags (for bio_alloc)
> + *
> + * Description:
> + *    Allocates, initializes common members, and returns a new bio.
> + */
> +static inline struct bio *bio_new(struct block_device *bdev, sector_t sector,
> +                                 unsigned int op, unsigned int op_flags,
> +                                 unsigned int max_bvecs, gfp_t gfp_mask)
> +{
> +       unsigned nr_bvec = clamp_t(unsigned int, max_bvecs, 0, BIO_MAX_PAGES);
> +       struct bio *bio = bio_alloc(gfp_mask, nr_bvec);
> 
> 
> I think that depending on the gfp_mask passed, bio can be NULL. So this should
> be checked.
> 
> 
> true, I'll add that check.
> 
> 
> 
> 
> +
> +       bio_set_dev(bio, bdev);
> +       bio->bi_iter.bi_sector = sector;
> +       bio_set_op_attrs(bio, op, op_flags);
> 
> 
> This function is obsolete. Open code this.
> 
> 
> true, will do.
> 
> 
> 
> 
> +
> +       return bio;
> +}
> 
>  #endif /* __LINUX_BIO_H */
> 
> 
> 
> Thanks for the comments Damien.

> _______________________________________________
> Ocfs2-devel mailing list
> Ocfs2-devel@oss.oracle.com
> https://oss.oracle.com/mailman/listinfo/ocfs2-devel



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
