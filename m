Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5FB7D380C
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Oct 2023 15:29:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1quuyu-0004kS-5X;
	Mon, 23 Oct 2023 13:28:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1quuys-0004kE-Tl
 for jfs-discussion@lists.sourceforge.net;
 Mon, 23 Oct 2023 13:28:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Sa6E4Qj1oc9mMqsv5L9bh8Mbh/T7iNaz8w1q2WI91v8=; b=MKzWtGnT3ne2WOGMvxvffCw1E7
 e7rDT3cYTcdpMWJwnSI0F//mHk4Ut/k7ZMgqHWfx+52c0EbwfHiDas9bZihEzTJcWIHnol0Go3Hf4
 QAsQNLz3bnKEsOxKoijjx1oYA85zM/pVnqfhjTFpEh1upzvRb/mywixm/AUkJh+j2ook=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Sa6E4Qj1oc9mMqsv5L9bh8Mbh/T7iNaz8w1q2WI91v8=; b=F2LZsg5wtaC3BxBQmwdlPRpzC0
 qhY8ukiFIkbbY1NBkSx5YVgKCGnEze+J41/1QqXahIQ1nbeLQY25AMq4pRQ+ilX/vXDcizgy2Cgfl
 47UED5I4mketyNDcWQiDd4HvZcS30NXJi6qDmpjqsqY5YvtAxSDTF9OjDNCXATU5jJ8g=;
Received: from mail-pl1-f171.google.com ([209.85.214.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1quuyr-007BPM-W0 for jfs-discussion@lists.sourceforge.net;
 Mon, 23 Oct 2023 13:28:30 +0000
Received: by mail-pl1-f171.google.com with SMTP id
 d9443c01a7336-1c9e072472bso20257025ad.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 23 Oct 2023 06:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698067704; x=1698672504; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Sa6E4Qj1oc9mMqsv5L9bh8Mbh/T7iNaz8w1q2WI91v8=;
 b=kwxqXCBrBc0BNqUtscSFZ2nV8p9jhxJ+b4JSYZS6NriHEwswMf4wYzryq3uSnOMuI5
 OS0NevmqOk+SmCfc45cOnUjeChZZzLdKXhdKjBi9sF598l6phF8eu+1rcYHoykYNkz4u
 q+8jQEtgOSnnzuREq00lqlDI5RK3beFExZFZJm+2eSZHOzwjlQ7tgPAIYSAP+qPl2vWa
 DW0qgUxM5d+hY8nxDE0PH55Qbk2pXMWtcAjn8n+wzQ+xGJ62yuh/tkXHUaYPqATS574R
 sVHGx8M35U958WpxNu41AL5CNLmyYUc6Jvhdyrcqt4YaYTsW1U0JR/txVghl07sYXedy
 bdJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698067704; x=1698672504;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Sa6E4Qj1oc9mMqsv5L9bh8Mbh/T7iNaz8w1q2WI91v8=;
 b=omu+52bOm2i5Xb+XzeuTrISnJFigLSTN1jIQ2UfrYoA01HgvE2X1fzIa3Q/pbRV7MZ
 4JBKGppNzMOY728FU2Zu4iL6Wmk3AFDDplNpfdEdj600QXBFwZhc3uagVesaIjGEAX9h
 oNYwR+A+aDaK5pN14Z5Kq4xaji1qhOlFnONOBpEHcMpJf3rjtNAUnp4/leZz+LqUkTM1
 ZVeIpRzTEyZ3TW2zlCaFZkTmg1sWKS6zSNvPO/9yttpEVNZZ5A3zEUUifjQks1twANkB
 EDmbK6ZAZy60JJYdH+zUc3GsWOfBXsMmneZOcy2+sZuTjacq12MGVIoABl6z1tbUjiPL
 nATA==
X-Gm-Message-State: AOJu0Yy0oxCxAFMc7vfvS8nnEM0/BsBnpfK7qfRCSh/hF5mHtjTbmoKx
 pyshF8nKSe4/6IRbNSTWQ31gmvgVA7mGugU8
X-Google-Smtp-Source: AGHT+IFvottFAmnA7SB2WAWQGZ9+jtpVVAczNTCh+JHMH8eODQoBHsYfdkkToljNxaQi/f+AKQzL6g==
X-Received: by 2002:a17:902:da8e:b0:1ca:4681:eb39 with SMTP id
 j14-20020a170902da8e00b001ca4681eb39mr7180734plx.17.1698067704143; 
 Mon, 23 Oct 2023 06:28:24 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.177]) by smtp.gmail.com with ESMTPSA id
 u15-20020a170902e80f00b001c9d2360b2asm5898797plg.22.2023.10.23.06.28.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Oct 2023 06:28:23 -0700 (PDT)
Message-ID: <339774d7-b50b-b4bc-7c49-b128b781428b@gmail.com>
Date: Tue, 17 Oct 2023 17:35:30 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: dave.kleikamp@oracle.com, shaggy@kernel.org
References: <20231017120356.55322-1-ghandatmanas@gmail.com>
In-Reply-To: <20231017120356.55322-1-ghandatmanas@gmail.com>
X-Spam-Score: 2.1 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Just a friendly remainder On 17/10/23 17:33, Manas Ghandat
 wrote: > Currently there is a bound check missing in the dbAdjTree while
 > accessing the dmt_stree. To add the required check added the bool is_ctl
 > which is required [...] 
 Content analysis details:   (2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [103.37.201.177 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.1 DATE_IN_PAST_96_XX     Date: is 96 hours or more before Received:
 date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.171 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -3.3 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1quuyr-007BPM-W0
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dbAdjTree
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
Cc: syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Just a friendly remainder

On 17/10/23 17:33, Manas Ghandat wrote:
> Currently there is a bound check missing in the dbAdjTree while
> accessing the dmt_stree. To add the required check added the bool is_ctl
> which is required to determine the size as suggest in the following
> commit.
> https://lore.kernel.org/linux-kernel-mentees/f9475918-2186-49b8-b801-6f0f9e75f4fa@oracle.com/
>
> Reported-by: syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com
> Fixes: https://syzkaller.appspot.com/bug?extid=39ba34a099ac2e9bd3cb
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> ---
>   fs/jfs/jfs_dmap.c | 57 ++++++++++++++++++++++++++---------------------
>   1 file changed, 31 insertions(+), 26 deletions(-)
>
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index 88afd108c2dd..57fba21994c3 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -63,10 +63,10 @@
>    */
>   static void dbAllocBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
>   			int nblocks);
> -static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval);
> -static int dbBackSplit(dmtree_t * tp, int leafno);
> -static int dbJoin(dmtree_t * tp, int leafno, int newval);
> -static void dbAdjTree(dmtree_t * tp, int leafno, int newval);
> +static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval, bool is_ctl);
> +static int dbBackSplit(dmtree_t * tp, int leafno, bool is_ctl);
> +static int dbJoin(dmtree_t * tp, int leafno, int newval, bool is_ctl);
> +static void dbAdjTree(dmtree_t * tp, int leafno, int newval, bool is_ctl);
>   static int dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc,
>   		    int level);
>   static int dbAllocAny(struct bmap * bmp, s64 nblocks, int l2nb, s64 * results);
> @@ -2096,7 +2096,7 @@ static int dbFreeDmap(struct bmap * bmp, struct dmap * dp, s64 blkno,
>   		 * system.
>   		 */
>   		if (dp->tree.stree[word] == NOFREE)
> -			dbBackSplit((dmtree_t *) & dp->tree, word);
> +			dbBackSplit((dmtree_t *) & dp->tree, word, false);
>   
>   		dbAllocBits(bmp, dp, blkno, nblocks);
>   	}
> @@ -2182,7 +2182,7 @@ static void dbAllocBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
>   			 * the binary system of the leaves if need be.
>   			 */
>   			dbSplit(tp, word, BUDMIN,
> -				dbMaxBud((u8 *) & dp->wmap[word]));
> +				dbMaxBud((u8 *) & dp->wmap[word]),false);
>   
>   			word += 1;
>   		} else {
> @@ -2222,7 +2222,7 @@ static void dbAllocBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
>   				 * system of the leaves to reflect the current
>   				 * allocation (size).
>   				 */
> -				dbSplit(tp, word, size, NOFREE);
> +				dbSplit(tp, word, size, NOFREE, false);
>   
>   				/* get the number of dmap words handled */
>   				nw = BUDSIZE(size, BUDMIN);
> @@ -2329,7 +2329,7 @@ static int dbFreeBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
>   			/* update the leaf for this dmap word.
>   			 */
>   			rc = dbJoin(tp, word,
> -				    dbMaxBud((u8 *) & dp->wmap[word]));
> +				    dbMaxBud((u8 *) & dp->wmap[word]),false);
>   			if (rc)
>   				return rc;
>   
> @@ -2362,7 +2362,7 @@ static int dbFreeBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
>   
>   				/* update the leaf.
>   				 */
> -				rc = dbJoin(tp, word, size);
> +				rc = dbJoin(tp, word, size, false);
>   				if (rc)
>   					return rc;
>   
> @@ -2514,16 +2514,16 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc, int level)
>   		 * that it is at the front of a binary buddy system.
>   		 */
>   		if (oldval == NOFREE) {
> -			rc = dbBackSplit((dmtree_t *) dcp, leafno);
> +			rc = dbBackSplit((dmtree_t *) dcp, leafno, true);
>   			if (rc) {
>   				release_metapage(mp);
>   				return rc;
>   			}
>   			oldval = dcp->stree[ti];
>   		}
> -		dbSplit((dmtree_t *) dcp, leafno, dcp->budmin, newval);
> +		dbSplit((dmtree_t *) dcp, leafno, dcp->budmin, newval, true);
>   	} else {
> -		rc = dbJoin((dmtree_t *) dcp, leafno, newval);
> +		rc = dbJoin((dmtree_t *) dcp, leafno, newval, true);
>   		if (rc) {
>   			release_metapage(mp);
>   			return rc;
> @@ -2554,7 +2554,7 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc, int level)
>   				 */
>   				if (alloc) {
>   					dbJoin((dmtree_t *) dcp, leafno,
> -					       oldval);
> +					       oldval, true);
>   				} else {
>   					/* the dbJoin() above might have
>   					 * caused a larger binary buddy system
> @@ -2564,9 +2564,9 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc, int level)
>   					 */
>   					if (dcp->stree[ti] == NOFREE)
>   						dbBackSplit((dmtree_t *)
> -							    dcp, leafno);
> +							    dcp, leafno, true);
>   					dbSplit((dmtree_t *) dcp, leafno,
> -						dcp->budmin, oldval);
> +						dcp->budmin, oldval, true);
>   				}
>   
>   				/* release the buffer and return the error.
> @@ -2614,7 +2614,7 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc, int level)
>    *
>    * serialization: IREAD_LOCK(ipbmap) or IWRITE_LOCK(ipbmap) held on entry/exit;
>    */
> -static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval)
> +static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval, bool is_ctl)
>   {
>   	int budsz;
>   	int cursz;
> @@ -2636,7 +2636,7 @@ static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval)
>   		while (cursz >= splitsz) {
>   			/* update the buddy's leaf with its new value.
>   			 */
> -			dbAdjTree(tp, leafno ^ budsz, cursz);
> +			dbAdjTree(tp, leafno ^ budsz, cursz, is_ctl);
>   
>   			/* on to the next size and buddy.
>   			 */
> @@ -2648,7 +2648,7 @@ static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval)
>   	/* adjust the dmap tree to reflect the specified leaf's new
>   	 * value.
>   	 */
> -	dbAdjTree(tp, leafno, newval);
> +	dbAdjTree(tp, leafno, newval, is_ctl);
>   }
>   
>   
> @@ -2679,7 +2679,7 @@ static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval)
>    *
>    * serialization: IREAD_LOCK(ipbmap) or IWRITE_LOCK(ipbmap) held on entry/exit;
>    */
> -static int dbBackSplit(dmtree_t * tp, int leafno)
> +static int dbBackSplit(dmtree_t * tp, int leafno, bool is_ctl)
>   {
>   	int budsz, bud, w, bsz, size;
>   	int cursz;
> @@ -2730,7 +2730,7 @@ static int dbBackSplit(dmtree_t * tp, int leafno)
>   				 * system in two.
>   				 */
>   				cursz = leaf[bud] - 1;
> -				dbSplit(tp, bud, cursz, cursz);
> +				dbSplit(tp, bud, cursz, cursz, is_ctl);
>   				break;
>   			}
>   		}
> @@ -2758,7 +2758,7 @@ static int dbBackSplit(dmtree_t * tp, int leafno)
>    *
>    * RETURN VALUES: none
>    */
> -static int dbJoin(dmtree_t * tp, int leafno, int newval)
> +static int dbJoin(dmtree_t * tp, int leafno, int newval, bool is_ctl)
>   {
>   	int budsz, buddy;
>   	s8 *leaf;
> @@ -2813,12 +2813,12 @@ static int dbJoin(dmtree_t * tp, int leafno, int newval)
>   			if (leafno < buddy) {
>   				/* leafno is the left buddy.
>   				 */
> -				dbAdjTree(tp, buddy, NOFREE);
> +				dbAdjTree(tp, buddy, NOFREE, is_ctl);
>   			} else {
>   				/* buddy is the left buddy and becomes
>   				 * leafno.
>   				 */
> -				dbAdjTree(tp, leafno, NOFREE);
> +				dbAdjTree(tp, leafno, NOFREE, is_ctl);
>   				leafno = buddy;
>   			}
>   
> @@ -2831,7 +2831,7 @@ static int dbJoin(dmtree_t * tp, int leafno, int newval)
>   
>   	/* update the leaf value.
>   	 */
> -	dbAdjTree(tp, leafno, newval);
> +	dbAdjTree(tp, leafno, newval, is_ctl);
>   
>   	return 0;
>   }
> @@ -2852,15 +2852,20 @@ static int dbJoin(dmtree_t * tp, int leafno, int newval)
>    *
>    * RETURN VALUES: none
>    */
> -static void dbAdjTree(dmtree_t * tp, int leafno, int newval)
> +static void dbAdjTree(dmtree_t * tp, int leafno, int newval, bool is_ctl)
>   {
>   	int lp, pp, k;
> -	int max;
> +	int max, size;
> +
> +	size = is_ctl ? CTLTREESIZE : TREESIZE;
>   
>   	/* pick up the index of the leaf for this leafno.
>   	 */
>   	lp = leafno + le32_to_cpu(tp->dmt_leafidx);
>   
> +	if (lp > size || lp < 0)
> +		return;
> +
>   	/* is the current value the same as the old value ?  if so,
>   	 * there is nothing to do.
>   	 */


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
