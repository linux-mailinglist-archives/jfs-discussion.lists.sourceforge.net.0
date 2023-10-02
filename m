Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 436E47B4B07
	for <lists+jfs-discussion@lfdr.de>; Mon,  2 Oct 2023 06:36:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qnAf6-00082j-1A;
	Mon, 02 Oct 2023 04:36:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qnAf4-00082c-Sr
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 04:36:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+QJdTadjS8UJxjgx2mNiZLVXiy8/ENWxPVhe2tdfgqY=; b=DdndJbvPflHG8NL5YVR/v7Vu4j
 TMkjnH8m88rW237wzQmG6EQDQp25l33+4O5jqoNjaqQKKK0G81L5OAv0G6k1LkDk76/GQR0aDPUQr
 WPWqiJhGkhJwtG8ntelaKcV0twu+7+T6k5Djfgh1Nt6Hyx7LFU7Hvb/s+p8P/O3bALcI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+QJdTadjS8UJxjgx2mNiZLVXiy8/ENWxPVhe2tdfgqY=; b=agGxZQvInMgOTVCgfzRLHa/xV5
 KvQjWuR7yCFKw1XZUVGr0SdKvxhNoHqZCw9xiexlEcLvXv4QomAZKAYM54cJvTvwq39L5nu1PPZCf
 n1qKsjbD/4XWC640n2StQJmWjGn5X9mWuGTwDoszN1VUbu4CNmPejHM3yTbMGYAid+Ps=;
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qnAf2-0007kV-RJ for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 04:36:02 +0000
Received: by mail-pl1-f196.google.com with SMTP id
 d9443c01a7336-1c5ff5f858dso93443005ad.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 01 Oct 2023 21:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696221355; x=1696826155; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+QJdTadjS8UJxjgx2mNiZLVXiy8/ENWxPVhe2tdfgqY=;
 b=Ax95JKoQlBk/x5BEXj6f3N4iyfNSrhoPOU9MSFAh4eFz/m4BN9p2jZG5TqynYrvCL3
 YRY6fpW7/QQA+HoGxP7gQNFhzFtVPJ4D2MnMn1FYFhjUC7IIjgZea2xkibv9sqYtm0u4
 DULXvAplnClfEXxTI/9FxKDRtTy0VgdAKfjFuccb5zKlyUUx7wBS9+6EjD4tRcNQFRKi
 0d4N6zF51gwHQZGemCrRtdcd8uhnYlCfPZ3DVa1V3bm5uxyqONfvLZI3HffDGhXNfG8R
 OlRt90E8PxARprzBetsrLklQJSrvhFRDB1QnjBM4CyDx+wsY/2SFj0/Z7qr44zPa3006
 A1yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696221355; x=1696826155;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+QJdTadjS8UJxjgx2mNiZLVXiy8/ENWxPVhe2tdfgqY=;
 b=fKWqygqgBDjGTDQHnghBO6TtDVbZECAezVGAhtx7Ilph5CixlQtA15EP7uDyU4CaEb
 SOishnwuZIQimUOojGbLzRY6uH/wbxhOuE8AkWOiaX8m3G6Qm9V419IwKC5Tm1eyj6qA
 8EWtz7SOZJWMzxc1Gi1r8qSEexMLih/z28i9Z/ZhIvGbPBxYQjXVNHINic2HWp3MeAwZ
 4+ZIXar7JnBeFzfoMLY2gtKRSrg0/MalC9RpnzvhSgx4B5yUJVcsE49RTuRwjdK0B5d8
 y/gp2f0apb9PRy61FtiDi6idm9rsiw7WuFdh95jZ2PApYwzIrgmudQMy1TK+eQIQFYJw
 YqqA==
X-Gm-Message-State: AOJu0YzeC1fc+GNToSpJlISSpNyXKB9O8+nzHI6YVmCCuo+CNxHwZx4b
 pk1khv21+/naqg4zFA/woFs=
X-Google-Smtp-Source: AGHT+IGi7XaUnIoApjJmGGM4nSA7Rar2ynZKxKiTDnf7E5OilAOUT8g+toeKDeeP3+tg4AzHJq3dqw==
X-Received: by 2002:a17:903:2587:b0:1c2:218c:3762 with SMTP id
 jb7-20020a170903258700b001c2218c3762mr7020364plb.42.1696221355305; 
 Sun, 01 Oct 2023 21:35:55 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.176]) by smtp.gmail.com with ESMTPSA id
 m10-20020a170902768a00b001c7276398f1sm9339272pll.164.2023.10.01.21.35.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Oct 2023 21:35:54 -0700 (PDT)
Message-ID: <7ce1a9af-e966-2d1e-2e80-bb019a35a22b@gmail.com>
Date: Mon, 2 Oct 2023 10:05:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: dave.kleikamp@oracle.com, shaggy@kernel.org
References: <20230922120341.10805-1-ghandatmanas@gmail.com>
In-Reply-To: <20230922120341.10805-1-ghandatmanas@gmail.com>
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  just a friendly ping On 22/09/23 17:33, Manas Ghandat wrote:
 > Currently while searching for dmtree_t for sufficient free blocks there
 > is an array out of bounds while getting element in tp->dm_stree. To add
 > the requir [...] 
 Content analysis details:   (1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [103.37.201.176 listed in zen.spamhaus.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?103.37.201.176>]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -3.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qnAf2-0007kV-RJ
Subject: Re: [Jfs-discussion] [PATCH v2] jfs: fix array-index-out-of-bounds
 in dbFindLeaf
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
 syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

just a friendly ping

On 22/09/23 17:33, Manas Ghandat wrote:
> Currently while searching for dmtree_t for sufficient free blocks there
> is an array out of bounds while getting element in tp->dm_stree. To add
> the required check for out of bound we first need to determine the type
> of dmtree. Thus added an extra parameter to dbFindLeaf so that the type
> of tree can be determined and the required check can be applied.
>
> Reported-by: syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=aea1ad91e854d0a83e04
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> ---
> V1 -> V2: Updated dbFindLeaf function.
>
>   fs/jfs/jfs_dmap.c | 14 ++++++++++----
>   1 file changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index a14a0f18a4c4..cee5164c4879 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -87,7 +87,7 @@ static int dbAllocCtl(struct bmap * bmp, s64 nblocks, int l2nb, s64 blkno,
>   static int dbExtend(struct inode *ip, s64 blkno, s64 nblocks, s64 addnblocks);
>   static int dbFindBits(u32 word, int l2nb);
>   static int dbFindCtl(struct bmap * bmp, int l2nb, int level, s64 * blkno);
> -static int dbFindLeaf(dmtree_t * tp, int l2nb, int *leafidx);
> +static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, int type);
>   static int dbFreeBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
>   		      int nblocks);
>   static int dbFreeDmap(struct bmap * bmp, struct dmap * dp, s64 blkno,
> @@ -1709,7 +1709,7 @@ static int dbFindCtl(struct bmap * bmp, int l2nb, int level, s64 * blkno)
>   		 * dbFindLeaf() returns the index of the leaf at which
>   		 * free space was found.
>   		 */
> -		rc = dbFindLeaf((dmtree_t *) dcp, l2nb, &leafidx);
> +		rc = dbFindLeaf((dmtree_t *) dcp, l2nb, &leafidx, 0);
>   
>   		/* release the buffer.
>   		 */
> @@ -1956,7 +1956,7 @@ dbAllocDmapLev(struct bmap * bmp,
>   	 * free space.  if sufficient free space is found, dbFindLeaf()
>   	 * returns the index of the leaf at which free space was found.
>   	 */
> -	if (dbFindLeaf((dmtree_t *) & dp->tree, l2nb, &leafidx))
> +	if (dbFindLeaf((dmtree_t *) &dp->tree, l2nb, &leafidx, 1))
>   		return -ENOSPC;
>   
>   	if (leafidx < 0)
> @@ -2920,14 +2920,18 @@ static void dbAdjTree(dmtree_t * tp, int leafno, int newval)
>    *	leafidx	- return pointer to be set to the index of the leaf
>    *		  describing at least l2nb free blocks if sufficient
>    *		  free blocks are found.
> + *	type	- type of dmtree
>    *
>    * RETURN VALUES:
>    *	0	- success
>    *	-ENOSPC	- insufficient free blocks.
>    */
> -static int dbFindLeaf(dmtree_t * tp, int l2nb, int *leafidx)
> +static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, int type)
>   {
>   	int ti, n = 0, k, x = 0;
> +	int max_size;
> +
> +	max_size = type ? TREESIZE : CTLTREESIZE;
>   
>   	/* first check the root of the tree to see if there is
>   	 * sufficient free space.
> @@ -2948,6 +2952,8 @@ static int dbFindLeaf(dmtree_t * tp, int l2nb, int *leafidx)
>   			/* sufficient free space found.  move to the next
>   			 * level (or quit if this is the last level).
>   			 */
> +			if (x + n > max_size)
> +				return -ENOSPC;
>   			if (l2nb <= tp->dmt_stree[x + n])
>   				break;
>   		}


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
