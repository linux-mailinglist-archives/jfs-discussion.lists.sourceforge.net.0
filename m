Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 402707B4B0B
	for <lists+jfs-discussion@lfdr.de>; Mon,  2 Oct 2023 06:36:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qnAfX-0006UH-Et;
	Mon, 02 Oct 2023 04:36:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qnAfV-0006UA-U1
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 04:36:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+IHZ4PtEqrEU6U7oDYDeV4BnN3Q2RTj1pjtCAgfvs8s=; b=SBbFVhZGN+9HXDKw35tbBDqhRT
 kP7RUAFuf5AQrft5frP0py1FKEWTIbqeTP0omQ5VqQI2B7XUcPKuZkkYh4eMJcn8BGwQTGVDUkg/o
 wKbQjzbSZ1MKbPw6R9IeKJ3jZyGOOUY5mb/Wp7kiuYPEdbRhQAGMcxZVO/fKXuFWPvHM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+IHZ4PtEqrEU6U7oDYDeV4BnN3Q2RTj1pjtCAgfvs8s=; b=ccq3eDuWxVvz7+Vt5fXGle856+
 LycFEm994cWvIrhazG1ohI7hseK+Llt+VvHUGwtdVc1CXs0E2Nc4NlJDrPX2QvNx78sR2uZ2bmRb+
 hABYF5E9LGHGlQxL3k2OqfguIZh0hr+4qB6FB+3BZQJyNDqt/ty+3KidWIGFlmRW3vRA=;
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qnAfQ-00FAhk-PB for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 04:36:28 +0000
Received: by mail-pj1-f68.google.com with SMTP id
 98e67ed59e1d1-278fde50024so1830400a91.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 01 Oct 2023 21:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696221379; x=1696826179; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+IHZ4PtEqrEU6U7oDYDeV4BnN3Q2RTj1pjtCAgfvs8s=;
 b=lnKNG5ZHtUx5auURn7mDbiLheCM0uhQ/Tywn1pBhqyUbg9loS41zeaQKGkin3EnpBg
 AtMN8381mHP/67yYTTuR8GS2riu8m83nUCfV7y7gc8YB7CGqHJD+G0xXeEYdiFWdLxzQ
 QdNEasGsElwWX+qYtdVNdXIFwmBb6ft+4xCtgJbE3qytmHTFIxAMqwG316OPNSKOfUc1
 q8+G2m82Oo6ePU94c++Cu+4y2A9oG4mFytBpNH30+TtaLPfxbqEFR8/VSRTIncZGo3qw
 C1Q7rhnEahAtnYsx14X5lSPKhxQ7ZfGq/xEVuioD5FWbmR/xEyLE1zZT4LCckylpwyPV
 e2rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696221379; x=1696826179;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+IHZ4PtEqrEU6U7oDYDeV4BnN3Q2RTj1pjtCAgfvs8s=;
 b=M2g+V4orfa1fYe2kgRXHuLJVq58kz2R0PtI64RCwKrYSqjoY/MKEPQFaf2+hgzZjBz
 SL4qVdQ9qL42Xw0u2YUicf9XYehgiUu77S23pBaF8+QFx8Cf6JR4HJwT8qrno6yKcepB
 iQK/2LiirSjm70Kt1KLAn7wuJCOHbsuPvqowlKTv4hIOX2TFXperQPVlS9v7C4YQq2lv
 4Xx2p88xvys5QnPfIJ/Bh0hVQPdwN0/GOhGSLXvjNdW/XyaRmIrkX2f9FLmEelxRsYtF
 FLIMZv4QHK2c1ihGRtVrJPhTG4dBQQJqfd4aRqc7wWGNtaHpDXmDzENPEHf07tyRBI54
 7fHA==
X-Gm-Message-State: AOJu0YzqN31S3IkWFUCAFABIdCBSaAi8cHSFdOzkYcLfZgtwmizF52+8
 /aRayCHcSS/xxsF7M67Oifk=
X-Google-Smtp-Source: AGHT+IHFok1OE9tef/GciC4pOQQCJxcF6Yj34Zg1x8reHcJYXd10NdfQB1RG7Zgj4Wc1aWBHjbkjeg==
X-Received: by 2002:a17:90a:d254:b0:271:78a0:8ab2 with SMTP id
 o20-20020a17090ad25400b0027178a08ab2mr15024414pjw.24.1696221379098; 
 Sun, 01 Oct 2023 21:36:19 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.176]) by smtp.gmail.com with ESMTPSA id
 i6-20020a17090a2ac600b0027360359b70sm5885636pjg.48.2023.10.01.21.36.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Oct 2023 21:36:18 -0700 (PDT)
Message-ID: <f03509ef-4501-e686-f484-416a6200fbeb@gmail.com>
Date: Mon, 2 Oct 2023 10:06:14 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: shaggy@kernel.org
References: <20230919155542.4354-1-ghandatmanas@gmail.com>
In-Reply-To: <20230919155542.4354-1-ghandatmanas@gmail.com>
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  just a friendly ping On 19/09/23 21:25, Manas Ghandat wrote:
 > Currently there is no check for out of bound access for xad in the > struct
 xtpage_t. Added the required check at various places for the same > >
 Signed-off-b [...] 
 Content analysis details:   (1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?103.37.201.176>]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [103.37.201.176 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.68 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -3.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qnAfQ-00FAhk-PB
Subject: Re: [Jfs-discussion] [PATCH] jfs : fs array-index-out-of-bounds in
 txCommit
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
Cc: syzbot+0558d19c373e44da3c18@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

just a friendly ping

On 19/09/23 21:25, Manas Ghandat wrote:
> Currently there is no check for out of bound access for xad in the
> struct xtpage_t. Added the required check at various places for the same
>
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> Reported-by: syzbot+0558d19c373e44da3c18@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=0558d19c373e44da3c18
> Fixes: df0cc57e057f
> ---
>   fs/jfs/jfs_txnmgr.c | 4 ++++
>   fs/jfs/jfs_xtree.c  | 6 ++++++
>   2 files changed, 10 insertions(+)
>
> diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
> index ce4b4760fcb1..6c6640942bed 100644
> --- a/fs/jfs/jfs_txnmgr.c
> +++ b/fs/jfs/jfs_txnmgr.c
> @@ -1722,6 +1722,10 @@ static void xtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
>   			jfs_err("xtLog: lwm > next");
>   			goto out;
>   		}
> +		if (lwm >= XTROOTMAXSLOT) {
> +			jfs_err("xtLog: lwm out of range");
> +			goto out;
> +		}
>   		tlck->flag |= tlckUPDATEMAP;
>   		xadlock->flag = mlckALLOCXADLIST;
>   		xadlock->count = next - lwm;
> diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
> index 2d304cee884c..57569c52663e 100644
> --- a/fs/jfs/jfs_xtree.c
> +++ b/fs/jfs/jfs_xtree.c
> @@ -357,6 +357,9 @@ static int xtSearch(struct inode *ip, s64 xoff,	s64 *nextp,
>   		for (base = XTENTRYSTART; lim; lim >>= 1) {
>   			index = base + (lim >> 1);
>   
> +			if (index >= XTROOTMAXSLOT)
> +				goto out;
> +
>   			XT_CMP(cmp, xoff, &p->xad[index], t64);
>   			if (cmp == 0) {
>   				/*
> @@ -618,6 +621,9 @@ int xtInsert(tid_t tid,		/* transaction id */
>   		memmove(&p->xad[index + 1], &p->xad[index],
>   			(nextindex - index) * sizeof(xad_t));
>   
> +	if (index >= XTROOTMAXSLOT)
> +		goto out;
> +
>   	/* insert the new entry: mark the entry NEW */
>   	xad = &p->xad[index];
>   	XT_PUTENTRY(xad, xflag, xoff, xlen, xaddr);


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
