Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C0F307613
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Ou-0000Zf-SK; Thu, 28 Jan 2021 12:27:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joseph.qi@linux.alibaba.com>) id 1l56IF-0007hg-TZ
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 12:20:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5in6UHIP+b9oOLRoI9b3+EgNtRyQp3bhxOoPFSmJOBo=; b=P6Gvq3MWnB/URTQa6icMe0nYNO
 2MZHyrH64cKsl0vgTQcBbHBHF/GCXE8Wq5JPy0puhyH6epnEChEEcxEpo9STvbLxCCWcEC6gkwYVl
 vsbCqX6Ij4xGy83KEJ5agDTWMLkFyUcaXMC1tshnVI7f31MlLkrkZoqeJ4zrZXXHj8AE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5in6UHIP+b9oOLRoI9b3+EgNtRyQp3bhxOoPFSmJOBo=; b=jqWwEDxpQt3+YrpZ4XY8npSEkE
 ajpfGgqOZZ+jUtIWnIBmxK4FQqwfzn064Gf+dowHs6NhZgdbS67Th/LIaSu7nU5745pQCtFhhMhgT
 AJCoKvLTzHr3hPlg5FH7Vz1GZpy89YQGFvZJTMKeJcjhguwurH0DEsPrlXhm8+4EaUA0=;
Received: from out30-56.freemail.mail.aliyun.com ([115.124.30.56])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l56BA-00HZ0I-Rn
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 12:14:02 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R261e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04357; MF=joseph.qi@linux.alibaba.com;
 NM=1; PH=DS; RN=56; SR=0; TI=SMTPD_---0UN8ZMkY_1611836008; 
Received: from B-D1K7ML85-0059.local(mailfrom:joseph.qi@linux.alibaba.com
 fp:SMTPD_---0UN8ZMkY_1611836008) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 28 Jan 2021 20:13:29 +0800
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
 <20210128071133.60335-26-chaitanya.kulkarni@wdc.com>
From: Joseph Qi <joseph.qi@linux.alibaba.com>
Message-ID: <8ba2c461-6042-757d-a3c1-0490932e749e@linux.alibaba.com>
Date: Thu, 28 Jan 2021 20:13:28 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210128071133.60335-26-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.56 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1l56BA-00HZ0I-Rn
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:47 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 25/34] ocfs/cluster: use bio_new in
 dm-log-writes
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
Cc: shaggy@kernel.org, sergey.senozhatsky.work@gmail.com, snitzer@redhat.com,
 tiwai@suse.de, djwong@kernel.org, gustavoars@kernel.org, pavel@ucw.cz,
 alex.shi@linux.alibaba.com, hch@lst.de, agk@redhat.com, naohiro.aota@wdc.com,
 sagi@grimberg.me, mark@fasheh.com, osandov@fb.com, ebiggers@kernel.org,
 ngupta@vflare.org, len.brown@intel.com, konrad.wilk@oracle.com, hare@suse.de,
 ming.lei@redhat.com, viro@zeniv.linux.org.uk, jefflexu@linux.alibaba.com,
 jaegeuk@kernel.org, konishi.ryusuke@gmail.com, bvanassche@acm.org,
 axboe@kernel.dk, damien.lemoal@wdc.com, jth@kernel.org, tytso@mit.edu,
 akpm@linux-foundation.org, martin.petersen@oracle.com, rjw@rjwysocki.net,
 philipp.reisner@linbit.com, minchan@kernel.org, tj@kernel.org,
 lars.ellenberg@linbit.com, roger.pau@citrix.com, asml.silence@gmail.com,
 jlbec@evilplan.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

I think you send a wrong subject by mistake.

Thanks,
Joseph

On 1/28/21 3:11 PM, Chaitanya Kulkarni wrote:
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> ---
>  fs/ocfs2/cluster/heartbeat.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/ocfs2/cluster/heartbeat.c b/fs/ocfs2/cluster/heartbeat.c
> index 0179a73a3fa2..b34518036446 100644
> --- a/fs/ocfs2/cluster/heartbeat.c
> +++ b/fs/ocfs2/cluster/heartbeat.c
> @@ -515,12 +515,13 @@ static struct bio *o2hb_setup_one_bio(struct o2hb_region *reg,
>  	unsigned int cs = *current_slot;
>  	struct bio *bio;
>  	struct page *page;
> +	sector_t sect = (reg->hr_start_block + cs) << (bits - 9);
>  
>  	/* Testing has shown this allocation to take long enough under
>  	 * GFP_KERNEL that the local node can get fenced. It would be
>  	 * nicest if we could pre-allocate these bios and avoid this
>  	 * all together. */
> -	bio = bio_alloc(GFP_ATOMIC, 16);
> +	bio = bio_new(reg->hr_bdev, sect, op, op_flags, 16, GFP_ATOMIC);
>  	if (!bio) {
>  		mlog(ML_ERROR, "Could not alloc slots BIO!\n");
>  		bio = ERR_PTR(-ENOMEM);
> @@ -528,11 +529,8 @@ static struct bio *o2hb_setup_one_bio(struct o2hb_region *reg,
>  	}
>  
>  	/* Must put everything in 512 byte sectors for the bio... */
> -	bio->bi_iter.bi_sector = (reg->hr_start_block + cs) << (bits - 9);
> -	bio_set_dev(bio, reg->hr_bdev);
>  	bio->bi_private = wc;
>  	bio->bi_end_io = o2hb_bio_end_io;
> -	bio_set_op_attrs(bio, op, op_flags);
>  
>  	vec_start = (cs << bits) % PAGE_SIZE;
>  	while(cs < max_slots) {
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
