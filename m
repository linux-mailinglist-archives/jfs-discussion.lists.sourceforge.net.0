Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B61A7173B2
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 04:27:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4BYR-000202-P9;
	Wed, 31 May 2023 02:27:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gouhao@uniontech.com>) id 1q4BYP-0001zp-Hx
 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 02:27:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:Reply-To:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A01mJZWigLgezUnV+6dXqqpEC4ipjaiko+YjTTqLPGc=; b=m28+YEPEexA1JUAgCFU1y67HhI
 L0BDMMYtd2WnxTzb5M8fAn34CMboWIrNaSkBO/gjOdsEA7o9SslsRu/8DN3hf/1iHO+I2IqP+qrc+
 h+m4QlhgkcBtTfiBnIrUlxVQhclJgqtaZnf5cJI0F868D7rCP05hfQ3edQFt6/oLGlKE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:Reply-To:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A01mJZWigLgezUnV+6dXqqpEC4ipjaiko+YjTTqLPGc=; b=byV3siSs/6s5x2o5pqqQAg0sHo
 G9M1+WG1eh/J6qcyRLfta7G/l2ga73T0m8T90BA9GRxCN9sNYg1cXm9hBFsoXUSYvH+u02THMmcUK
 dRXrRsMWpyzd5Zqhjla5GbcJvA9XVrGFkcN0EWfj1WmX57m0xE3UeG2Q1VnJyaOPn9E0=;
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4BYL-0072Ss-0Y for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 02:27:13 +0000
X-QQ-mid: bizesmtp81t1685496025tw3oxnvp
Received: from [10.7.13.54] ( [113.200.76.118])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Wed, 31 May 2023 09:20:22 +0800 (CST)
X-QQ-SSF: 01400000000000C0G000000A0000000
X-QQ-FEAT: W+onFc5Tw4MXg9NmrArDYuEAjJHK4eL16p2bcGANAmu997qLZ+ujaV0s8Z1f/
 Nzmi8pNaWsKZP3Jmi5RKnu6nb+dCbNyrwOCVF3RhlVA1YBbFzgt8Coml9Vf2MloZUnDRpkl
 ADpUgJE8XNtjVow/bv7ZzhCNWk6I9WYmKFl0SSM5YLTrc8oT51rizMWMAPqdm1XDAhtCWWX
 DTqIUQa3efIfkNOAZX6/Yw4UnTUT6YoTYppGEuFOveHR6P5KZuNwCsuXN+Ey1bBhqyCVvPN
 eC3evk9wk+U3FfRn1CeZLX4tO4xCLND+a2cq7UCdAoJE6IMuJmrs5xNI56H1bmPeS+O61qR
 RBvgLchUjYteu3Ao0qfjQZGWJn29WS3hcVcO44C5o7MX+jf/j0=
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 16526261309428552688
Message-ID: <594B3D441ED28D0D+301afc15-d56d-4b9b-dc94-c97c658df05c@uniontech.com>
Date: Wed, 31 May 2023 09:20:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
 <f67cc9c310bed1e3c3302ea1c206da7d5ebc14cb.1685461490.git.johannes.thumshirn@wdc.com>
From: Gou Hao <gouhao@uniontech.com>
In-Reply-To: <f67cc9c310bed1e3c3302ea1c206da7d5ebc14cb.1685461490.git.johannes.thumshirn@wdc.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvrgz:qybglogicsvrgz7a-0
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/30/23 23:49, Johannes Thumshirn wrote: > The buffer_head
 submission code uses bio_add_page() to add a page to a > newly created bio.
 bio_add_page() can fail, but the return value is never > checked. > > Use
 __bio_add_page() as adding a sin [...] 
 Content analysis details:   (1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [54.254.200.128 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.254.200.128 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
X-Headers-End: 1q4BYL-0072Ss-0Y
Subject: Re: [Jfs-discussion] [PATCH v6 04/20] fs: buffer: use
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
Reply-To: f67cc9c310bed1e3c3302ea1c206da7d5ebc14cb.1685461490.git.johannes.thumshirn@wdc.com
Cc: linux-raid@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 cluster-devel@redhat.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Song Liu <song@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Bob Peterson <rpeterso@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 5/30/23 23:49, Johannes Thumshirn wrote:

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


Reviewed-by: Gou Hao <gouhao@uniontech.com>

> ---
>   fs/buffer.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/fs/buffer.c b/fs/buffer.c
> index a7fc561758b1..63da30ce946a 100644
> --- a/fs/buffer.c
> +++ b/fs/buffer.c
> @@ -2760,8 +2760,7 @@ static void submit_bh_wbc(blk_opf_t opf, struct buffer_head *bh,
>   
>   	bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
>   
> -	bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
> -	BUG_ON(bio->bi_iter.bi_size != bh->b_size);
> +	__bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
>   
>   	bio->bi_end_io = end_bio_bh_io_sync;
>   	bio->bi_private = bh;


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
