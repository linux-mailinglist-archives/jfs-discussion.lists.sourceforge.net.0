Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B13D7CACD5
	for <lists+jfs-discussion@lfdr.de>; Mon, 16 Oct 2023 17:02:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qsP6c-00036H-RY;
	Mon, 16 Oct 2023 15:02:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qsP6Z-00036A-Nk
 for jfs-discussion@lists.sourceforge.net;
 Mon, 16 Oct 2023 15:02:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JnnS58IgMMW37G00hlv3uANnt69yT13t13Z0Wl0btSI=; b=ZDu59RS9gJ0CQQR8iHcKyitADL
 wjX0ozA8mYMEbqAL61j0im2I1EKAtz5ZhWtpYL9tYWtm4uUFDBypckiDFoymPRuOtXaylIU8sDcH5
 BTU0C1o1DFvAW85FQpXZYTbqiQCp4Z+UYe2LWZXj8IoPmnhIUaBWXDpIQwkL4wyguaWg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JnnS58IgMMW37G00hlv3uANnt69yT13t13Z0Wl0btSI=; b=VQGywaeMW+4T9BtBIz6CfTRK4n
 G4M3KNtN8Axdr5RTT555z5bZOcT8V60dn78yL/2k5gSJtobZTUm0K+dKllHfWqt4sxkCNqzZzSawt
 1keN8RLa++YU296rzrok7156vlfribtQuB6q0HaWeO6/JOb13+7JZo/wPEn2u7weWVDg=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qsP6W-00Gi0u-EI for jfs-discussion@lists.sourceforge.net;
 Mon, 16 Oct 2023 15:02:04 +0000
Received: by mail-pl1-f195.google.com with SMTP id
 d9443c01a7336-1ca215cc713so10021275ad.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 16 Oct 2023 08:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697468515; x=1698073315; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=JnnS58IgMMW37G00hlv3uANnt69yT13t13Z0Wl0btSI=;
 b=PS45ndYhtK4YL3DzHBYxw8LwSZPmz79kAMyN6MRBdgsPXShnDjdRCGQ/X+ptOWdL8+
 9eMi21A6cxXQMVY58rUSzzONZBdGZOc66ZLhEAO32PPaH7CEBtt4ml2Uz0o4DFpxaBHH
 NtAUT3/D8GEqvLdA4LAjYjpusvs10f1GZn2VvKfm55AKTM25n95AIhqPI6WTCo0+U+BD
 XjWh/N7j4N72I9K3DUJzHzy3yvqZaCTDqnyMmSy03Kn5II0+MUuPGslVD4m6gNToa+9g
 e1ljL2/V6R9fuFDogYg2AVeYphd6Hqazet1V1LD/9VBWSwQ4MqYJL93qPy7iKhkqSfjf
 lVnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697468515; x=1698073315;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JnnS58IgMMW37G00hlv3uANnt69yT13t13Z0Wl0btSI=;
 b=qt7emFwgYQneQ7MLNcaLCpkbtb3vyNeEzGVfQfXhXFyVWgwo96Pbfjnl07e7MIZUR1
 JFwhxiSfJvDsmzinciE/cOWxWceQ74aLuS6c/119gi5cn4Blfl+VV5gdWf8TSC+ORGEP
 0px6jOxvibADLInQ7+E4BGLhkOa9eOuCnuRkdXRvI3tZ/aKHngcEs5oNTny6e79rD6er
 BNw3P1dSuekPFy6fuvNddVKbKAAPRaUkZ/lueHdzMgzCrfAxz9jNFXABjKyu5IV8CzaR
 SMEPJyJ7rADDWUuf9ZzYIx2H6pMGbDZBjGUmo2s9uOyhFkgd2uJnmtkwpJzk585LIwCa
 oWpw==
X-Gm-Message-State: AOJu0YzP+B2ZyCh2LOkdNApvZIptf1Nm+vCORsFPCZkRx+U7dhvldlfj
 BeEiJfxRq09IXc5hcyG/4dg=
X-Google-Smtp-Source: AGHT+IFT6Dq4J/EVcOv+em6QWTH7/Ht//OA+UE5IFyVPLa0/LDab/gjnaYbmFu2DaSdjzjdENCEB5A==
X-Received: by 2002:a17:902:988d:b0:1c9:b207:d412 with SMTP id
 s13-20020a170902988d00b001c9b207d412mr15460340plp.37.1697468514526; 
 Mon, 16 Oct 2023 08:01:54 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.178]) by smtp.gmail.com with ESMTPSA id
 l13-20020a170902eb0d00b001b890009634sm8574379plb.139.2023.10.16.08.01.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Oct 2023 08:01:54 -0700 (PDT)
Message-ID: <c4af0ef6-56e2-089e-e1b3-55574f6964c6@gmail.com>
Date: Mon, 16 Oct 2023 20:31:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: dave.kleikamp@oracle.com, shaggy@kernel.org
References: <20231008174745.27342-1-ghandatmanas@gmail.com>
In-Reply-To: <20231008174745.27342-1-ghandatmanas@gmail.com>
X-Spam-Score: -3.5 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Just a friendly ping :) On 08/10/23 23:17,
 Manas Ghandat wrote:
 > Currently while copying dtree root from inode to dnode in the xp slot >
 there is a out of bound memcpy. Added a bound check to the memcpy. > >
 Reported-by: sy [...] 
 Content analysis details:   (-3.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -3.3 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qsP6W-00Gi0u-EI
Subject: Re: [Jfs-discussion] [PATCH] jfs : fix array-index-out-of-bounds in
 diWrite
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
 syzbot+c1056fdfe414463fdb33@syzkaller.appspotmail.com,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Just a friendly ping :)

On 08/10/23 23:17, Manas Ghandat wrote:
> Currently while copying dtree root from inode to dnode in the xp slot
> there is a out of bound memcpy. Added a bound check to the memcpy.
>
> Reported-by: syzbot+c1056fdfe414463fdb33@syzkaller.appspotmail.com
> Fixes: https://syzkaller.appspot.com/bug?extid=c1056fdfe414463fdb33
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> ---
>   fs/jfs/jfs_imap.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index 799d3837e7c2..d1f897848be0 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -746,7 +746,8 @@ int diWrite(tid_t tid, struct inode *ip)
>   		xp = (dtpage_t *) & dp->di_dtroot;
>   		lv = ilinelock->lv;
>   		for (n = 0; n < ilinelock->index; n++, lv++) {
> -			memcpy(&xp->slot[lv->offset], &p->slot[lv->offset],
> +			if (lv->offset < 128)
> +				memcpy(&xp->slot[lv->offset], &p->slot[lv->offset],
>   			       lv->length << L2DTSLOTSIZE);
>   		}
>   	} else {


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
