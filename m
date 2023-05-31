Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA02718F0F
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Jun 2023 01:30:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4VGl-0000tn-Kq;
	Wed, 31 May 2023 23:30:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@fromorbit.com>) id 1q4VGZ-0000tO-Oa
 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 23:30:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n3rg9Z09BIl1aIQXz+8gKGwERErjA3Juhruo9wqB2U8=; b=VwlTDczOY/FITJhIKQTvkauome
 +aH3q1vBSBtdPSXYC4b6qlpQXWXEWJOgs+LUBsrj4wmNNEmCAXHEnija0rvHOBlHo56XCPGTHgqqC
 2rOTpaG+rK54tj4KDDE16vK7eanmEwZi2Sy3JKSfnO/kEmrpqu96AY6YwI/BuOi73C+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n3rg9Z09BIl1aIQXz+8gKGwERErjA3Juhruo9wqB2U8=; b=D/N/DV0uhma7/YHyQSJj6Oogkr
 M08f/jtyFWwOBPyc3qZSQs9V5VcIGYvwbg+yJGiQZacjEeRUWhvyLflGOS1b/6bLUBfHNpVDasKzJ
 TtuXeRKa6G1iEDOTCDR0eBXFPy3d7SaI6Tiq3/plg4A0jc9w4fgIcf9Hyf0EJrUW0/ro=;
Received: from mail-ua1-f53.google.com ([209.85.222.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q4VGU-0003JE-MR for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 23:30:07 +0000
Received: by mail-ua1-f53.google.com with SMTP id
 a1e0cc1a2514c-783f88ce548so38187241.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 31 May 2023 16:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fromorbit-com.20221208.gappssmtp.com; s=20221208; t=1685575797; x=1688167797;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=n3rg9Z09BIl1aIQXz+8gKGwERErjA3Juhruo9wqB2U8=;
 b=PNX9ce0msGgIvmhaPFMwFzVg/rtNlyVuMU6/iufFpdTE4VBBnS00RSsd5mSQ5Mo4Vn
 YGg/tYReYy3jLDMjVX01yoXiZHUidA4L+EjYZYswkACzKWdLWiMs7KIIyPAi2h2yL8O3
 ge8jlkU60i4YZTa7YZMbqdtKiNW+B+wDEUSpuVxeSZM7gGB+vpE3bATG9IRXvkbTHwc/
 eBt39ATorFIuIWt6z71wrZX1nN2lkjs59eE2SAyAlIBV95lPsH+VQNLl1jfzZZZPDi9g
 Wosch9m27jiZHE2Z9MkND+cqZSDioqb8HryRzDjkTaxHErlqQ4VtnlWBvMQrGmCLQ6iH
 3kpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685575797; x=1688167797;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=n3rg9Z09BIl1aIQXz+8gKGwERErjA3Juhruo9wqB2U8=;
 b=LxVZ1AdIiCu0fcC6wfXUe2qoCmEmE8AdBTs58FP6YMUxAAFdIS96ao2cqSbwOqeBPb
 TA9CJOsNxsDdUY4ULP8MEF6QFWFAf5QLItbEDBCKQFTazswfWImpCgckgwgDCus0S09X
 uwrxpdl5+JUkj6i4f2ix2DC+xGxW7sd8YQIXNeDba8Kuo/sP5boyz+XmVBR1F6Vq0MJy
 0iTFeLsJoYfJ5EgLnloOJghjKrzNL2YU6bPA+7CIU2oqj/o5g1T4ykDvbAtG7ZjX2eHm
 RHnNGyTKOOuHHShf+gIfPDJ1L1+MWk7jcL9pEvPqovL1csijEXDju/W3T3QCEw33L5Wd
 MevA==
X-Gm-Message-State: AC+VfDyM6u6HPNxsmKhCUeDO0dBfrq7IsB/oexOiWfP2fNtLvGKZ0Urk
 Ws72f0FQP/BOlBXulbUBSeKpLamrWikWxXndzag=
X-Google-Smtp-Source: ACHHUZ7R3wjvNkmWSbL60I9ylavOeUTJY88g1+p1PDiLJE+SHWNaI13IUYsVS+xjUDM8kOkAj2iUNQ==
X-Received: by 2002:a05:6808:1496:b0:398:2f85:ff7f with SMTP id
 e22-20020a056808149600b003982f85ff7fmr6512900oiw.50.1685572621938; 
 Wed, 31 May 2023 15:37:01 -0700 (PDT)
Received: from dread.disaster.area (pa49-179-0-188.pa.nsw.optusnet.com.au.
 [49.179.0.188]) by smtp.gmail.com with ESMTPSA id
 e12-20020a170902784c00b001b034fafaefsm1948337pln.38.2023.05.31.15.37.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 May 2023 15:37:01 -0700 (PDT)
Received: from dave by dread.disaster.area with local (Exim 4.96)
 (envelope-from <david@fromorbit.com>) id 1q4UR9-006HGI-0M;
 Thu, 01 Jun 2023 08:36:59 +1000
Date: Thu, 1 Jun 2023 08:36:59 +1000
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Message-ID: <ZHfMC86ktyLtIxNb@dread.disaster.area>
References: <cover.1685532726.git.johannes.thumshirn@wdc.com>
 <58fa893c24c67340a63323f09a179fefdca07f2a.1685532726.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58fa893c24c67340a63323f09a179fefdca07f2a.1685532726.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, May 31, 2023 at 04:50:42AM -0700, Johannes Thumshirn
 wrote: > When the iomap buffered-io code can't add a folio to a bio,
 it allocates
 a > new bio and adds the folio to that one. This is done [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4VGU-0003JE-MR
Subject: Re: [Jfs-discussion] [PATCH v7 19/20] fs: iomap: use
 bio_add_folio_nofail where possible
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
From: Dave Chinner via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dave Chinner <david@fromorbit.com>
Cc: Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Song Liu <song@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, gouha7@uniontech.com,
 Christoph Hellwig <hch@lst.de>, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, May 31, 2023 at 04:50:42AM -0700, Johannes Thumshirn wrote:
> When the iomap buffered-io code can't add a folio to a bio, it allocates a
> new bio and adds the folio to that one. This is done using bio_add_folio(),
> but doesn't check for errors.
> 
> As adding a folio to a newly created bio can't fail, use the newly
> introduced bio_add_folio_nofail() function.
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
> ---
>  fs/iomap/buffered-io.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
> index 063133ec77f4..0edab9deae2a 100644
> --- a/fs/iomap/buffered-io.c
> +++ b/fs/iomap/buffered-io.c
> @@ -312,7 +312,7 @@ static loff_t iomap_readpage_iter(const struct iomap_iter *iter,
>  			ctx->bio->bi_opf |= REQ_RAHEAD;
>  		ctx->bio->bi_iter.bi_sector = sector;
>  		ctx->bio->bi_end_io = iomap_read_end_io;
> -		bio_add_folio(ctx->bio, folio, plen, poff);
> +		bio_add_folio_nofail(ctx->bio, folio, plen, poff);
>  	}
>  
>  done:
> @@ -539,7 +539,7 @@ static int iomap_read_folio_sync(loff_t block_start, struct folio *folio,
>  
>  	bio_init(&bio, iomap->bdev, &bvec, 1, REQ_OP_READ);
>  	bio.bi_iter.bi_sector = iomap_sector(iomap, block_start);
> -	bio_add_folio(&bio, folio, plen, poff);
> +	bio_add_folio_nofail(&bio, folio, plen, poff);
>  	return submit_bio_wait(&bio);
>  }
>  
> @@ -1582,7 +1582,7 @@ iomap_add_to_ioend(struct inode *inode, loff_t pos, struct folio *folio,
>  
>  	if (!bio_add_folio(wpc->ioend->io_bio, folio, len, poff)) {
>  		wpc->ioend->io_bio = iomap_chain_bio(wpc->ioend->io_bio);
> -		bio_add_folio(wpc->ioend->io_bio, folio, len, poff);
> +		bio_add_folio_nofail(wpc->ioend->io_bio, folio, len, poff);
>  	}

We lose adjacent page merging with this change.

We've had performance regressions in the past that have been
attributed to either the page allocator not handing out sequential
adjacent pages for sequential writes and/or bios not merging
adjacent pages. Some hardware is much more performant when it only
has to do a single large DMA instead of (potentially) hundreds of
single page DMAs for the same amount of data...

What performance regression testing has been done on this change?

-Dave.
-- 
Dave Chinner
david@fromorbit.com


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
