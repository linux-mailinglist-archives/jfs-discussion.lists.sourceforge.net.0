Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C24771621C
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 15:36:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q3zWY-0005w6-7C;
	Tue, 30 May 2023 13:36:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gouhao@uniontech.com>) id 1q3sUX-00030x-OL
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 06:05:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y0a3qrgW7xR5mo053x8YAAt5HhAI7uPhIOS31nE1PP4=; b=gnQqlgRjNsMnwN4bcjstZhJoXV
 tl1KXmscMYIHLA4XMhdqZdW88eWKiu765A9dojYda5ndN4vjsdzo8vzb/evVs7aj6hBfzD3SlGHdQ
 p8EYuroiULgr00xBGjAE/+cw0yv5ezJzwMdftg2jmURTzfmZheJifOmSsKcATrQ0GXv4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y0a3qrgW7xR5mo053x8YAAt5HhAI7uPhIOS31nE1PP4=; b=S8gibLjYpQjZA2fD6CLvTurYZa
 tc6/97PESqfO5XPpaIb4/mqw0a17TeuQuCwWL8TDbnye4qfHPf+qDEYfZaV9UUTJF7jcKWOnZnQo0
 wDWItm7daHx/AISlJsQe3qjGdbGZFryyh3OjO2M0KmtjPviiFx4wWFOA8wceqZAUCia8=;
Received: from smtpbguseast3.qq.com ([54.243.244.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3sUQ-00031n-SE for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 06:05:57 +0000
X-QQ-mid: bizesmtp65t1685426547tmy4xja6
Received: from localhost.localdomain ( [113.200.76.118])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Tue, 30 May 2023 14:02:24 +0800 (CST)
X-QQ-SSF: 01400000000000C0G000000A0000000
X-QQ-FEAT: znfcQSa1hKaNoAA+Wu37XwpK1cksC/6aTghWFSS0JvJasQfz+eIO2zJLQRT6i
 rEM1DjNn+cMKUMmMkYKxNVhiJ/YaqYwyOdwJn8trVVHL4FwWqRIC1gXasm0tl2QcgbOhP2j
 LvZhKTr8+O0f7WbJ7aEKXPBecA76aTyilAsJsTVqnedMXbBhFAnGHPVXjv6vLMsjW6YvPyi
 i1gtBueSiPnfPmNzUzOGPtA6xO9BEI1yiGrXZ0be9XSQujkY1RIoTVJFJr5g/q5q1gPvFUS
 ZEKOIIEP+REIXrHWhBXhZbB8seLB4k9ZUsPfQMlMU4/yyaVrRkuBNBwcOqvR1A5Vgs91htm
 UZo1RdQcwSh9F4y0PRV2IDwcHtWLTFF1d191XBv6COHtM1tov3TE4c2SwkUPUQ1WWsDxlmz
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 6104239791662094715
From: gouhao@uniontech.com
To: johannes.thumshirn@wdc.com
Date: Tue, 30 May 2023 14:02:22 +0800
Message-Id: <20230530060222.14892-1-gouhao@uniontech.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230502101934.24901-5-johannes.thumshirn@wdc.com>
References: <20230502101934.24901-5-johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvrgz:qybglogicsvrgz7a-0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > > The buffer_head submission code uses bio_add_page() to
 add a page to a > newly created bio. bio_add_page() can fail, but the return
 value is never > checked. > > Use __bio_add_page() as adding a s [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.243.244.52 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [54.243.244.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q3sUQ-00031n-SE
X-Mailman-Approved-At: Tue, 30 May 2023 13:36:29 +0000
Subject: Re: [Jfs-discussion] [PATCH v5 04/20] fs: buffer: use
 __bio_add_page to add single page to bio
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
Cc: axboe@kernel.dk, linux-block@vger.kernel.org, damien.lemoal@wdc.com,
 kch@nvidia.com, agruenba@redhat.com, shaggy@kernel.org, song@kernel.org,
 damien.lemoal@opensource.wdc.com, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-mm@kvack.org, dm-devel@redhat.com,
 hare@suse.de, linux-fsdevel@vger.kernel.org, linux-raid@vger.kernel.org,
 hch@lst.de, rpeterso@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

> 
> The buffer_head submission code uses bio_add_page() to add a page to a
> newly created bio. bio_add_page() can fail, but the return value is never
> checked.
> 
> Use __bio_add_page() as adding a single page to a newly created bio is
> guaranteed to succeed.
> 
> This brings us a step closer to marking bio_add_page() as __must_check.
> 
> Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
> ---
>  fs/buffer.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/buffer.c b/fs/buffer.c
> index a7fc561758b1..5abc26d8399d 100644
> --- a/fs/buffer.c
> +++ b/fs/buffer.c
> @@ -2760,7 +2760,7 @@ static void submit_bh_wbc(blk_opf_t opf, struct buffer_head *bh,
>  
>  	bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
>  
> -	bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
> +	__bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
>  	BUG_ON(bio->bi_iter.bi_size != bh->b_size);
Can `BUG_ON` be deleted now ?
>  
>  	bio->bi_end_io = end_bio_bh_io_sync;
> -- 
> 2.40.0
--
thanks,
Gou Hao


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
