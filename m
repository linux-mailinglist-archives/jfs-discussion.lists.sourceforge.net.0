Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D207CACC2
	for <lists+jfs-discussion@lfdr.de>; Mon, 16 Oct 2023 17:01:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qsP5P-0005sT-2D;
	Mon, 16 Oct 2023 15:00:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qsP5N-0005sJ-BU
 for jfs-discussion@lists.sourceforge.net;
 Mon, 16 Oct 2023 15:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fE5UoW9vdKH2feO+bDEwIT8Ft2NGameqkjIHnMibMyQ=; b=lIGT4/Mppxyf3Kx7oh5KVcnOcF
 zW9VKu/D+jieoTRFx470W0OmvMACDUaE2Aai9UWOKE8sIR03JKyXryYyi7Wtrg1LsZxO41LndXilo
 ZvN/P2R13dElkq79bL+nN0KGrur+BNVG0l8Cfkj6Mm+h7IEPTqasoyh3tCl45wwtu0go=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fE5UoW9vdKH2feO+bDEwIT8Ft2NGameqkjIHnMibMyQ=; b=EA4pGsh4+nNmPOKO65bmOf0x0k
 VPcLll3y14armvk8x9kWa6vAc4Fy/SkRUxFrbTx/6uEP9BIwBVDb+wPrv07XvrZbChm4d3fmemzCx
 x/qiqJvsuXaFQUgNPqEul9b8kJ9w8Clu6+nlrenNaD/GG+kV5TvdHnXK7hjpb6kMLYTc=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qsP5J-0007VE-Lx for jfs-discussion@lists.sourceforge.net;
 Mon, 16 Oct 2023 15:00:49 +0000
Received: by mail-ot1-f67.google.com with SMTP id
 46e09a7af769-6c61d955161so2771823a34.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 16 Oct 2023 08:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697468439; x=1698073239; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fE5UoW9vdKH2feO+bDEwIT8Ft2NGameqkjIHnMibMyQ=;
 b=fEyiaT2nCcG+5ziPaXVpNp4Ec6zE92p8IV2fd66Hjih+e0dcKeivv2hCtzcQo/wxvo
 MNAWor/MszOSwthiapH4obZCQElf2SI9rWWxt6RJynZ0EXgiv1ZaaRxjTPKwkCRgf+bc
 fbCyEJOEymJlqTwcjyIA2Iy44GpdhFrKXYrenEQ4CH8h8200W5tXhpO+i86f6/CgtnLA
 gMv4BGvA2ALdjgljbeJLCvuGnhGogK9TK+O2aVduVfhdxsqdEAwKheJjyk1psIoqVFBv
 UbQX5HayckBDC6WvOXFuqV2OJ9nUZ05XUV2HSPI6bYO5zDfkog5XnP4t9na2sFWx02QL
 ojjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697468439; x=1698073239;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fE5UoW9vdKH2feO+bDEwIT8Ft2NGameqkjIHnMibMyQ=;
 b=nO9h6M7jcMO9nvnX5CnBU7vcxF7IDeg7Yi2Wo6i4N6TQMsYlIdNUmk4dowICjp5dCj
 BgODDvwzI1dLx8VdIn/efGqvyFSS33Te8j9BsuKNVMavFqpmjk7qGvvBfVcxk+J1wmOM
 PJnHHUSYDeqL5inlWSqbqou6Xv2RokZDL+Fr+/WNkoJJSpiozhx7hbkqDUQCmcatWbP8
 /t4e4hFY/r7+ZmtOAoUrpaZWH91HYIbI7YY1Z8Al+/K2AtEyRIcXYuZ5gTEzLlPOVywN
 uPBjtgq+sitDlvWSir6Qf1ViFYpxCqTYvoG4D3hVgL3z9/ppZ/Es9CaJNiTK0GBnLXQU
 EEkA==
X-Gm-Message-State: AOJu0YwC/P1XK5+wzJDoo+jp7Cu0tLvYe8/vt5WjqNH/Xqjsm+M86BA4
 m/+zkmoOa5QtOacFhovcQ84VzGekU0L8/oUwRB8=
X-Google-Smtp-Source: AGHT+IG+nSpv7E/GZMd53ppQO+XRAkVwTQ5NdDnDdqv/DnwRvoEQjEn3reBSiU5yAuUwdF5DsqdadQ==
X-Received: by 2002:a05:6870:2c99:b0:1e9:a5f2:aab3 with SMTP id
 oh25-20020a0568702c9900b001e9a5f2aab3mr13474131oab.57.1697468439317; 
 Mon, 16 Oct 2023 08:00:39 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.178]) by smtp.gmail.com with ESMTPSA id
 k9-20020aa79729000000b006bd6a0a4678sm3037911pfg.80.2023.10.16.08.00.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Oct 2023 08:00:38 -0700 (PDT)
Message-ID: <50a32ba6-0051-6b70-aa8a-f565f8119a69@gmail.com>
Date: Mon, 16 Oct 2023 20:30:32 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: dave.kleikamp@oracle.com, shaggy@kernel.org
References: <20231011143937.31996-1-ghandatmanas@gmail.com>
Content-Language: en-US
In-Reply-To: <20231011143937.31996-1-ghandatmanas@gmail.com>
X-Spam-Score: -3.5 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Just a friendly ping :) On 11/10/23 20:09,
 Manas Ghandat wrote:
 > Currently while joining the leaf in a buddy system there is shift out >
 of bound error in calculation of BUDSIZE. Added the required check > to the
 BUDSIZE an [...] 
 Content analysis details:   (-3.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -3.3 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qsP5J-0007VE-Lx
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix shift-out-of-bounds in dbJoin
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
From: Manas Ghandat via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Manas Ghandat <ghandatmanas@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 syzbot+411debe54d318eaed386@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Just a friendly ping :)

On 11/10/23 20:09, Manas Ghandat wrote:
> Currently while joining the leaf in a buddy system there is shift out
> of bound error in calculation of BUDSIZE. Added the required check
> to the BUDSIZE and fixed the documentation as well.
>
> Reported-by: syzbot+411debe54d318eaed386@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=411debe54d318eaed386
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> ---
>   fs/jfs/jfs_dmap.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index 6b838d3ae7c2..baa97bda1c7a 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -2730,7 +2730,9 @@ static int dbBackSplit(dmtree_t * tp, int leafno)
>    *	leafno	- the number of the leaf to be updated.
>    *	newval	- the new value for the leaf.
>    *
> - * RETURN VALUES: none
> + * RETURN VALUES:
> + *  0		- success
> + *	-EIO	- i/o error
>    */
>   static int dbJoin(dmtree_t * tp, int leafno, int newval)
>   {
> @@ -2757,6 +2759,10 @@ static int dbJoin(dmtree_t * tp, int leafno, int newval)
>   		 * get the buddy size (number of words covered) of
>   		 * the new value.
>   		 */
> +
> +		if ((newval - tp->dmt_budmin) > BUDMIN)
> +			return -EIO;
> +
>   		budsz = BUDSIZE(newval, tp->dmt_budmin);
>   
>   		/* try to join.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
