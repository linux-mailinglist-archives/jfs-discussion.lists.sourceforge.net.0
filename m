Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CC498D58A
	for <lists+jfs-discussion@lfdr.de>; Wed,  2 Oct 2024 15:31:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1svzRp-0007sb-QP;
	Wed, 02 Oct 2024 13:31:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sandeen@redhat.com>) id 1svzRo-0007sU-P1
 for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Oct 2024 13:31:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kG31EDHNs4XBvMsZ9DeD8Jl6inKN8cIGFR2fYCg/NOY=; b=CjN0Jjm3vkth1+KAYc4Ds3KveK
 Yst40CSMmrBlmSmvAskJ8YkH6alOYEO1PbFUwCENxLnIJiP2JI3C7nti3/XtdDyiqL9jOOx7YKtO3
 Bni4SyZ/NGwsn8JIlWxj5x0v9kSqKJrY5X8PTHsk+1vXoWKbHYC1KLeO8z7uYwRt8XLE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kG31EDHNs4XBvMsZ9DeD8Jl6inKN8cIGFR2fYCg/NOY=; b=H1TpIibcVJTDAIaWEYwoIjY+EW
 zp1IpqpxK82fID/NyahRDkH7bAxE7Dc4zfFM1UbTCBEyHTtdMWBFY5Tr/sOjEurNVituYdGUsusou
 3BF7HXJ7GEacNeuNk227QxQYaQR57yDaDhxACQob3jtc6fpXT9Kvnz5Or+OXn7GiPf7Q=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1svzRn-0007oL-Tn for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Oct 2024 13:31:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1727875873;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kG31EDHNs4XBvMsZ9DeD8Jl6inKN8cIGFR2fYCg/NOY=;
 b=OCGQO0vMdytMY6fWt+8ZgaE4cLvf2/bzs5AaxfbHfme23zNs/D/WQNh87t8GiAxgXlYTAa
 sLvl7/2rSFtm8cXXtiDm3jv2TMV1ADEXacukNSL6fuN4GX0WNwf/b6fX1xAHwtu2KsoSLc
 TnczXF6S/oTDRwjrBhnenTiTiC0ab7s=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-515-q8_JYgUZN7in3sXHKObJWg-1; Wed, 02 Oct 2024 09:31:10 -0400
X-MC-Unique: q8_JYgUZN7in3sXHKObJWg-1
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-82cf30e0092so600119639f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 02 Oct 2024 06:31:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727875869; x=1728480669;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kG31EDHNs4XBvMsZ9DeD8Jl6inKN8cIGFR2fYCg/NOY=;
 b=pSzKN+GVPNNwoslvfYYypZiROmeUkgpSsO1K9MzmUs5ZUW88u60Hu7oqLDezvP4dEC
 LvtTUnCYelL0JEVnwTjpbgpfGXXGWu48f6dxpQIz0PGcriuhNXZgd6ySgD2zd9CGSkFS
 wX+acooy0ZgL5IGkejAixdR7b9BLkWICo1fkPtoBRokQOe9sJP7raaOenp0pqz7nRjsj
 O94rBZSX80L11OANhD6ZRJJ+qhuhZIPNGavaZ9Vg8/5oy1n78mNR4nwVcttcXiPLtaL6
 Pm7wo98cNleZnmjhj5dIOYlDiel+jA1SDKetEapgc+CN/sA6L0EurrMlzL07BaT4j1Eb
 LKOA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX0BBcSfvWdHMmtpHmRhhkg5KA1sNo41O/YAXtfp0kqZt6VJHAA48CID//nftY/fLgXRzmJktnmMVTkIREDMw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyuSNNe55nOeA+MFTmUpAMnKxgjqVYmo272pe4ELCkO3XiF7lEq
 PBouuj0xUrk+f/cko2TUrbKcGCJqr+Js8sJTcbG8gkUuQyhsKBgBmaQAGz4CR/KbmL6As1leEJV
 NFmO7A4baGUX7vLIjsRyiG9QEyEN9paUYExRVE/wbTTQAXGaVIJJFj3yzn5ubUYgvmjg3Rmfb
X-Received: by 2002:a05:6e02:1a89:b0:3a0:915d:a4a7 with SMTP id
 e9e14a558f8ab-3a3659148c2mr28330605ab.2.1727875869309; 
 Wed, 02 Oct 2024 06:31:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAdwEKr6plwqFuxmM9ma1CDchXeNSljjdg/khGqhkhWXUo0hb9PQuzdqRTOYWHtaAWvdfBEg==
X-Received: by 2002:a05:6e02:1a89:b0:3a0:915d:a4a7 with SMTP id
 e9e14a558f8ab-3a3659148c2mr28330275ab.2.1727875868936; 
 Wed, 02 Oct 2024 06:31:08 -0700 (PDT)
Received: from [10.0.0.71] (67-4-202-127.mpls.qwest.net. [67.4.202.127])
 by smtp.gmail.com with ESMTPSA id
 e9e14a558f8ab-3a344bff8d4sm36646195ab.0.2024.10.02.06.31.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2024 06:31:07 -0700 (PDT)
Message-ID: <09db55b6-385b-46e1-92e7-ee4dbfe439de@redhat.com>
Date: Wed, 2 Oct 2024 08:31:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>
References: <12768f55-47e6-4bfa-aa63-0a82b911e098@stanley.mountain>
In-Reply-To: <12768f55-47e6-4bfa-aa63-0a82b911e098@stanley.mountain>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/2/24 3:37 AM, Dan Carpenter wrote: > This is just a
 small white space cleanup. The conversion to the new > mount api accidentally
 added an extra indent on these lines. > > Signed-off-by: Dan Car [...] 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1svzRn-0007oL-Tn
Subject: Re: [Jfs-discussion] [PATCH] jfs: Delete a couple tabs in
 jfs_reconfigure()
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
From: Eric Sandeen via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Eric Sandeen <sandeen@redhat.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, Christian Brauner <brauner@kernel.org>,
 Jan Kara <jack@suse.cz>, kernel-janitors@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Chengming Zhou <zhouchengming@bytedance.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/2/24 3:37 AM, Dan Carpenter wrote:
> This is just a small white space cleanup.  The conversion to the new
> mount api accidentally added an extra indent on these lines.
> 
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>

Ugh, oops, thanks.

Reviewed-by: Eric Sandeen <sandeen@redhat.com>

> ---
>  fs/jfs/super.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/jfs/super.c b/fs/jfs/super.c
> index 223d9ac59839..508666d4ed01 100644
> --- a/fs/jfs/super.c
> +++ b/fs/jfs/super.c
> @@ -389,8 +389,8 @@ static int jfs_reconfigure(struct fs_context *fc)
>  
>  		if (!ctx->newLVSize) {
>  			ctx->newLVSize = sb_bdev_nr_blocks(sb);
> -				if (ctx->newLVSize == 0)
> -					pr_err("JFS: Cannot determine volume size\n");
> +			if (ctx->newLVSize == 0)
> +				pr_err("JFS: Cannot determine volume size\n");
>  		}
>  
>  		rc = jfs_extendfs(sb, ctx->newLVSize, 0);



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
