Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC3D307BDF
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 18:13:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l5ArH-0001HV-3Y; Thu, 28 Jan 2021 17:13:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <djwong@kernel.org>) id 1l5AeK-0004AK-3e
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 17:00:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wmoYC4mCnjuGPGie7eHejSYMgylLnhkCDiwCuS9fxdY=; b=Pyz7Bd8KWdTIL9I5qPqFcRef1M
 S+Teji3d+3dJpuOXPUoA2K8ITYFKx9H8T3yxihE6FIMKX2t4CE/muLkckjpoHHEZ2yOEpNpEyxPli
 3mEi3cymiHhHbA7IFWzx/kwnBcgkFVK8MQvRa4CoiiLvDceRRLIYbxPXMYQFroQ93PSg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wmoYC4mCnjuGPGie7eHejSYMgylLnhkCDiwCuS9fxdY=; b=JlTKpdbOHwcX3fKT4f78P2E0N+
 Vn+7Hg5p/3bhBfvKf4fx1zq5MgnaFz4FtHxCsZu4wFXzTo4PXgFx7Lyh8XNm9iU5o4333X6lEd5AG
 eMs1VARR27zY9d0yJv1NXP2XBqyTsWRoWDOWu8uhTPiXftfnP6OID3V+6+oeWFqP+jjw=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l5Ae8-000t3X-KT
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 17:00:02 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0EEE564E0E;
 Thu, 28 Jan 2021 16:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611853187;
 bh=f6FDYR+2fbZ3ZjuVDKmJrkeFHlqyA4P3vGdmoyOPa1M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rzag2xxRHgFBGSJ365/QUldWd9CTCZVGt3cs71rJutBhKs94QB4O0wVHJ78U0xIF9
 n96V7cXtAmPsB9hu9gUYvKXwcH1SXtYNdkFw15Hr/lW1MQ6ApKzq4voIl5psE+u1SS
 oIYlBt3CEfmzYKr/W9GKeV1ES9XtHwmC1KiXTL4cmN2/9EoY9kXCbDD71u9sIp+Nfr
 FbyyfdHM+E5ZA+F8801PzzCElIq3kyLXwweF8LRAnfmH79wwG+57YuSijr3uE7kbk9
 /DpcS6Ckt3f1RwDjmwI1QhKt/MkNHods9aX+BJj1ComGJOXJH3o25qnvlVltgShwCo
 r/bA/dJbtb2Sw==
Date: Thu, 28 Jan 2021 08:59:46 -0800
From: "Darrick J. Wong" <djwong@kernel.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Message-ID: <20210128165946.GL7698@magnolia>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
 <20210128071133.60335-18-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128071133.60335-18-chaitanya.kulkarni@wdc.com>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l5Ae8-000t3X-KT
X-Mailman-Approved-At: Thu, 28 Jan 2021 17:13:25 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 17/34] iomap: use bio_new in
 iomap_dio_zero
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

On Wed, Jan 27, 2021 at 11:11:16PM -0800, Chaitanya Kulkarni wrote:
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

Looks ok to me,
Reviewed-by: Darrick J. Wong <djwong@kernel.org>

--D

> ---
>  fs/iomap/direct-io.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/iomap/direct-io.c b/fs/iomap/direct-io.c
> index ea1e8f696076..f6c557a1bd25 100644
> --- a/fs/iomap/direct-io.c
> +++ b/fs/iomap/direct-io.c
> @@ -189,15 +189,13 @@ iomap_dio_zero(struct iomap_dio *dio, struct iomap *iomap, loff_t pos,
>  	int flags = REQ_SYNC | REQ_IDLE;
>  	struct bio *bio;
>  
> -	bio = bio_alloc(GFP_KERNEL, 1);
> -	bio_set_dev(bio, iomap->bdev);
> -	bio->bi_iter.bi_sector = iomap_sector(iomap, pos);
> +	bio = bio_new(iomap->bdev, iomap_sector(iomap, pos), REQ_OP_WRITE,
> +		      flags, 1, GFP_KERNEL);
>  	bio->bi_private = dio;
>  	bio->bi_end_io = iomap_dio_bio_end_io;
>  
>  	get_page(page);
>  	__bio_add_page(bio, page, len, 0);
> -	bio_set_op_attrs(bio, REQ_OP_WRITE, flags);
>  	iomap_dio_submit_bio(dio, iomap, bio, pos);
>  }
>  
> -- 
> 2.22.1
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
