Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 205F8307C85
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 18:32:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l5B9U-0004T8-Gt; Thu, 28 Jan 2021 17:32:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <djwong@kernel.org>) id 1l5B1u-0003MC-U9
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 17:24:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uQm1wcNjNiw4Rh2rA3LOydiZ8Un7yAeagJqxHV07du4=; b=HrWNkiPMov5uKjoqSYnDMFbUMn
 XtrDzRFZXDluGqcqWLboHxwTVXOkkM73uZk6DCz4mvYnh/ycX9ALuLd/7c8t/L5FckEpmohm6FaYC
 9KL/WW2OuBwRoRiBzkoHCe3v+VT2cVz2/rz7EzrY1L7lnGIRgSPZfrKMfo2tfrobNwWU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uQm1wcNjNiw4Rh2rA3LOydiZ8Un7yAeagJqxHV07du4=; b=hT2sp7mZ8QOhwTOa84zTg9uA7h
 BHY8BJYylPt3ZNeI/6uaagRpBDJCvcuxHgvSpfkt5wKUwlzCDiC20Y4SHzjlDAUlyT9I1ES6fE0n/
 vuMzVk2kwWSik1br8KYR1LNRhxjtX9DIi+W5Wn3f41x8r774rSA9u75NwIIIgkalrhlg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l5B1c-00G0QR-Be
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 17:24:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B21F464DF9;
 Thu, 28 Jan 2021 17:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611854642;
 bh=Zs2s8ZvTIPYGR4BFwbfSOZLDbQpy7x8YdhBNvxD8Dok=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dYixlgG2K3aWwDLaJowzYgnOFmByUyz6PjYTAvhTfbvB+e9gPk0mBgRRvBez32mDu
 g+/BEjUeO2s7tBkV+OtFiT2UlC3mn8gjSXsXC5Xpxm6KRmfDNpc8Z7+gIuibodKK4H
 l1i2cwlyEJsSukyTcGjNrcpQfEjVAbCBE6DwgrePquTtnF0XcOLlk2eq3YbBOrXlcF
 50KQtEwBjnE5+b+zJhPCQRu9YN8ISWqvJskcg8GQfdpqKteYo166Aso1a23IfJvuVj
 VfAojNA36QPu6qz6sKkxuvacugxCY5JwWT3tNh6OxRrRzVwkEqP+vyF3JrdyJAT+Ys
 o8BRepJ02vTLA==
Date: Thu, 28 Jan 2021 09:24:02 -0800
From: "Darrick J. Wong" <djwong@kernel.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Message-ID: <20210128172402.GO7698@magnolia>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
 <20210128071133.60335-19-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128071133.60335-19-chaitanya.kulkarni@wdc.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l5B1c-00G0QR-Be
X-Mailman-Approved-At: Thu, 28 Jan 2021 17:28:17 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 18/34] iomap: use bio_new in
 iomap_dio_bio_actor
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

On Wed, Jan 27, 2021 at 11:11:17PM -0800, Chaitanya Kulkarni wrote:
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> ---
>  fs/iomap/direct-io.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/iomap/direct-io.c b/fs/iomap/direct-io.c
> index f6c557a1bd25..0737192f7e5c 100644
> --- a/fs/iomap/direct-io.c
> +++ b/fs/iomap/direct-io.c
> @@ -267,9 +267,8 @@ iomap_dio_bio_actor(struct inode *inode, loff_t pos, loff_t length,
>  			goto out;
>  		}
>  
> -		bio = bio_alloc(GFP_KERNEL, nr_pages);
> -		bio_set_dev(bio, iomap->bdev);
> -		bio->bi_iter.bi_sector = iomap_sector(iomap, pos);
> +		bio = bio_new(iomap->bdev, iomap_sector(iomap, pos), 0, 0,
> +			      nr_pages, GFP_KERNEL);

op == 0?  It seems a little odd to me that we'd set the field to zero
and then construct bi_opf later.

It also strikes me as a little strange that bi_opf is combined from the
third and fourth parameters, but maybe some day you'll want to do some
parameter verification on debug kernels or something...?

--D

>  		bio->bi_write_hint = dio->iocb->ki_hint;
>  		bio->bi_ioprio = dio->iocb->ki_ioprio;
>  		bio->bi_private = dio;
> -- 
> 2.22.1
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
