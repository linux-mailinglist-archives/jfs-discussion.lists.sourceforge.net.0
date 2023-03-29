Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A4A6CF168
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:49:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZuq-0001Da-8D;
	Wed, 29 Mar 2023 17:48:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1phZup-0001DU-3t
 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:48:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iJ/vola4H8cgViEzEkBXlY8ssW/mXMKcLaixwmisg/8=; b=I4Wm/mjbKiWWKN6e8CMjreU+xe
 ZnUB6RYUoTTeiSiBlc83yPDqnSTqQS4or8P0R5ikppy2lcWiHHNsSiKNKoDNYq4BQMtrc8zzK0xVE
 /BGsXbtS5jn/jrarbwt3/rNj+Gxe5+pff0/SShsZeIlF6s9bHwOpLGz0jy90JZGDLtRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iJ/vola4H8cgViEzEkBXlY8ssW/mXMKcLaixwmisg/8=; b=kJjP61ar1kGNr8Q8oWi15ZGrxX
 n/4AUgdGtCWEggi5r0Qb7EK3Hfrc0DtaCjcjQvtmMI468P0QtarEzDVq1i6ySTIrMI884dXeWNjeK
 7VK0LdMiO2QkP1Jl9zVvm2huOlq3t22ZBuNOr+7jVvwIUzdBPrqnTy0MB7BTj/PTFreI=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZuk-0005Sa-59 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:48:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=iJ/vola4H8cgViEzEkBXlY8ssW/mXMKcLaixwmisg/8=; b=KzrLO9+ytx3PbWRmiLMufLNeIF
 uDOJXsmUYrUM1RWImI0Q6RZjfNc59DlaoUlO9FYruvV9zL6gp/6N8Ug10m9lq1fW6H4NVD/orTF3L
 UC22t2bbOh5slkLr32VRltg5atVlsd5nnPGmg+lSz88Pc2EuESTc5Z7LxUO9mbIq1l/uDb1uMyTLZ
 lLgUTqa4ZM52QW2KhPUgaxaIa9oitnfFZKC5nbMu3w+qsJg+Nhvy8Osq4w45CGu4TT3zT/bf/fRQy
 UoicfczStNRwCnW3SVVki5SWWM7i0XVCyJkhaCupv57+kOz/v7+3xTJlGG+mzQ2roOdv5F5YXJAQA
 /G6qJtWw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1phZu2-009drW-11; Wed, 29 Mar 2023 17:48:06 +0000
Date: Wed, 29 Mar 2023 18:48:05 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Message-ID: <ZCR51cLkBH4yrYEy@casper.infradead.org>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <87d0bf7d65cb7c64a0010524e5b39466f2b79870.1680108414.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d0bf7d65cb7c64a0010524e5b39466f2b79870.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Mar 29, 2023 at 10:05:48AM -0700, Johannes Thumshirn
 wrote: > +++ b/drivers/block/drbd/drbd_bitmap.c > @@ -1043,9 +1043,11 @@
 static void bm_page_io_async(struct drbd_bm_aio_ctx *ctx, int page [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phZuk-0005Sa-59
Subject: Re: [Jfs-discussion] [PATCH 02/19] drbd: use __bio_add_page to add
 page to bio
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Song Liu <song@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 linux-mm@kvack.org, dm-devel@redhat.com, David Sterba <dsterba@suse.com>,
 Hannes Reinecke <hare@suse.de>, linux-fsdevel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-btrfs@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Mar 29, 2023 at 10:05:48AM -0700, Johannes Thumshirn wrote:
> +++ b/drivers/block/drbd/drbd_bitmap.c
> @@ -1043,9 +1043,11 @@ static void bm_page_io_async(struct drbd_bm_aio_ctx *ctx, int page_nr) __must_ho
>  	bio = bio_alloc_bioset(device->ldev->md_bdev, 1, op, GFP_NOIO,
>  			&drbd_md_io_bio_set);
>  	bio->bi_iter.bi_sector = on_disk_sector;
> -	/* bio_add_page of a single page to an empty bio will always succeed,
> -	 * according to api.  Do we want to assert that? */
> -	bio_add_page(bio, page, len, 0);
> +	/*
> +	 * __bio_add_page of a single page to an empty bio will always succeed,
> +	 * according to api.  Do we want to assert that?
> +	 */
> +	__bio_add_page(bio, page, len, 0);

Surely the comment should just be deleted?  With no return value to
check, what would you assert?


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
