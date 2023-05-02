Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B45D6F430D
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 13:51:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptoXO-0002bT-V2;
	Tue, 02 May 2023 11:51:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rpeterso@redhat.com>) id 1ptoXL-0002bM-8T
 for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 11:51:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kdZho8b0P96S/DuDI1xyFnU41Cvk0heUauLxuFmvVg0=; b=VnraQn8vvfjX1qzpCVxG/7UVAD
 cO9EvpmPIKg3eBIL6vokV2O4YK7FOzkJ2DX+sYFe4u2sf5sTMWv62nqgRqjOsd/at3uGUZkTOEzLJ
 /KcFxK9tDlmLgcs/5+uVpaOSbpDW8PCQdGvruCMMaWnYBJpv+D3RuM0noNl/38kYWrzE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kdZho8b0P96S/DuDI1xyFnU41Cvk0heUauLxuFmvVg0=; b=ADV84PvgpmYx0yRz2R4avMNPwt
 1YokYQPGiNlcSazyf5l6yK+2dZmcEiLl1IQSZs9iZUBxWBcaJGAI5nkL1kNKD3nfg2lF/HSQS/8pJ
 gZZGYTLe+5bdTXHJgodMSEO3ywCB8G4YUtsR2vkN9bJf73aMPAAr9wSU6bn//AsIkdA4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptoXH-00BVUx-Kq for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 11:51:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1683028265;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kdZho8b0P96S/DuDI1xyFnU41Cvk0heUauLxuFmvVg0=;
 b=eslnCZOxn9i4zvt8htQONJui7EQDjN3EOBPUH+V1UMpPuxCJ0c8YdF8qSwFm++Qg0aSafh
 Ebz3nJ0eZipBjXI1Ga2hXma7ttUqMcGV+ETxBqjW2ZLiiWVzJOf4KYa5q9N6XQ6fINe5iH
 X26N3cqYwRejGwoE7zjBUuAyUmH90oQ=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-190-oyTRVqFpPoC1cTpoD4X3xg-1; Tue, 02 May 2023 07:51:04 -0400
X-MC-Unique: oyTRVqFpPoC1cTpoD4X3xg-1
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-3ef3ca5b5afso49413421cf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 02 May 2023 04:51:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683028264; x=1685620264;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kdZho8b0P96S/DuDI1xyFnU41Cvk0heUauLxuFmvVg0=;
 b=CvRhcsrMMQkG7FgG+SeZsV9qD4HSgNax0GMYgPRHmlCMqUJwgqsLqQR4815ppr33EZ
 LpQGhRF4H94fya3fXRC6gQqNy7FNhQc1eKpA4D0iN5+v314cYb8z0g6Hes9x6+iNiAdX
 eKxvj9oagljylDpPsH95IlZ4/fwos4NYIeggxiTuYrYLrTz+3xWEKJKv187R/M2WaSnn
 JySa1F9kiYhqXdF96xe76s4dJXCGWCxxoPqEvBpSJnPYMVcjTG9Iy7hdQBYtSX5pTbzN
 KHlKhnEpmQIqwArRk4qfp1jXcWyu6tY00Adu7Tjfo+1CEiQ2wyaw+Jd0Yp9jZ9gPrm8c
 Kr9w==
X-Gm-Message-State: AC+VfDwo2IIpwXLBwaf6DlUp+aZVDF4tPkC+uEVDQKtCu2bEDK3VuXTi
 vOZHyohcb0hirUrFfHyQ4O1UdaX50Jwd56D/+74bRvrbg/GlERgQsdYCsyEQQb4yFgeVQ7UTCBh
 KfED8MGm0wIL9Lva6p3z07M3aOZYuYPJU7yg=
X-Received: by 2002:a05:622a:30f:b0:3ef:337b:4fcb with SMTP id
 q15-20020a05622a030f00b003ef337b4fcbmr28295423qtw.64.1683028264050; 
 Tue, 02 May 2023 04:51:04 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5Vrqw+pKj/0O/fsSqYR2NNR+qseAedVJ76NoenSc8LVgBigL4KUU+oPaikQc4zPyJmE8NtjQ==
X-Received: by 2002:a05:622a:30f:b0:3ef:337b:4fcb with SMTP id
 q15-20020a05622a030f00b003ef337b4fcbmr28295396qtw.64.1683028263837; 
 Tue, 02 May 2023 04:51:03 -0700 (PDT)
Received: from ?IPV6:2601:883:c200:210:6ae9:ce2:24c9:b87b?
 ([2601:883:c200:210:6ae9:ce2:24c9:b87b])
 by smtp.gmail.com with ESMTPSA id
 fd9-20020a05622a4d0900b003d65e257f10sm6632958qtb.79.2023.05.02.04.51.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 May 2023 04:51:02 -0700 (PDT)
Message-ID: <5f3ddda1-2c7d-811c-ffd5-5fc237def2eb@redhat.com>
Date: Tue, 2 May 2023 07:51:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 "axboe @ kernel . dk" <axboe@kernel.dk>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
 <20230502101934.24901-10-johannes.thumshirn@wdc.com>
From: Bob Peterson <rpeterso@redhat.com>
In-Reply-To: <20230502101934.24901-10-johannes.thumshirn@wdc.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/2/23 6:19 AM,
 Johannes Thumshirn wrote: > The GFS2 superblock
 reading code uses bio_add_page() to add a page to a > newly created bio.
 bio_add_page() can fail, but the return value is never > che [...] 
 Content analysis details:   (-1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.4 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ptoXH-00BVUx-Kq
Subject: Re: [Jfs-discussion] [PATCH v5 09/20] gfs2: use __bio_add_page for
 adding single page to bio
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
Cc: linux-block@vger.kernel.org, damien.lemoal@wdc.com, kch@nvidia.com,
 agruenba@redhat.com, shaggy@kernel.org, song@kernel.org,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-mm@kvack.org, dm-devel@redhat.com,
 hare@suse.de, linux-fsdevel@vger.kernel.org, linux-raid@vger.kernel.org,
 hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 5/2/23 6:19 AM, Johannes Thumshirn wrote:
> The GFS2 superblock reading code uses bio_add_page() to add a page to a
> newly created bio. bio_add_page() can fail, but the return value is never
> checked.
> 
> Use __bio_add_page() as adding a single page to a newly created bio is
> guaranteed to succeed.
> 
> This brings us a step closer to marking bio_add_page() as __must_check.
> 
> Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
> Reviewed-by: Andreas Gruenbacher <agruenba@redhat.com>
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
> ---
>   fs/gfs2/ops_fstype.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/gfs2/ops_fstype.c b/fs/gfs2/ops_fstype.c
> index 9af9ddb61ca0..cd962985b058 100644
> --- a/fs/gfs2/ops_fstype.c
> +++ b/fs/gfs2/ops_fstype.c
> @@ -254,7 +254,7 @@ static int gfs2_read_super(struct gfs2_sbd *sdp, sector_t sector, int silent)
>   
>   	bio = bio_alloc(sb->s_bdev, 1, REQ_OP_READ | REQ_META, GFP_NOFS);
>   	bio->bi_iter.bi_sector = sector * (sb->s_blocksize >> 9);
> -	bio_add_page(bio, page, PAGE_SIZE, 0);
> +	__bio_add_page(bio, page, PAGE_SIZE, 0);
>   
>   	bio->bi_end_io = end_bio_io_page;
>   	bio->bi_private = page;
Hi Johannes,

So...I see 6 different calls to bio_add_page() in gfs2.
Why change this particular bio_add_page() to __bio_add_page() and not 
the other five?

Regards,

Bob Peterson



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
