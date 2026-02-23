Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DscNjRmnGmsFwQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Feb 2026 15:37:40 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 281F917821C
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Feb 2026 15:37:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bex2d2yZMzrcTt6pL3tM23H7w9bAWfQbZ889XWgbSgs=; b=b5K6d1tPs5hd63TbJUf5S8zDYH
	7HOr6G4V1SaDAJp4G5WGKEu6rTIF5j+4J3lNrQ+N25MZ+rj69MkOnbBM2lz4RlKR7fWX3hRA7haj3
	P3Qa629coQuhZv0E0J2NrwHl2Px1FR5piLPf+uOROed5ueEqCfNvTOV1bv93IDshTs1E=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vuX3U-0002Zv-Vp;
	Mon, 23 Feb 2026 14:37:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dvyukov@google.com>) id 1vuX3N-0002Zg-7u
 for jfs-discussion@lists.sourceforge.net;
 Mon, 23 Feb 2026 14:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MM3aKteGZmW/7GayY7dRMfYL0Xw/N+1zNqCVx7UjMoM=; b=dOQiBSXly/rICfPb89mIteVM7g
 T5pgy0+1Cp9DbkTtBEz7loTzKYUDEptf2WbNQqut3p0WnGZTOHwRJ+51Rhmm1L1XWhVLU6bUE8LOR
 3e6I6YsNQebziMmF31KdYM/R7W0ZM7aVCO6WtgnL9jOyDFP+hYQTfNqBfmRGhYMBqHM8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MM3aKteGZmW/7GayY7dRMfYL0Xw/N+1zNqCVx7UjMoM=; b=cc1UAU8B+q27dvwe8lpjs/0NmO
 tfZStWQ7mxGZnyIQa9iqPdl6dFTR0i5zm6Y/8ZpnzNzszjVsO/VQKmtasOsOGOqRmeNTm/Q4nbtAy
 KXDG81W2Fl5lm2113L00Lt6ZId6uPAIx+odvuIOGrD3lE5BLHyH9G1IbcI13wSePlaKc=;
Received: from mail-lj1-f182.google.com ([209.85.208.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vuX3N-0000PJ-9n for jfs-discussion@lists.sourceforge.net;
 Mon, 23 Feb 2026 14:36:53 +0000
Received: by mail-lj1-f182.google.com with SMTP id
 38308e7fff4ca-3870acaf78eso34672111fa.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 23 Feb 2026 06:36:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771857402; cv=none;
 d=google.com; s=arc-20240605;
 b=hx5lfV0Sdz7HviQFTlQOW8fu46EHjL+F7n2T72+u87wqZ+f9poZMNTMBTJeU3xKwLz
 NYBXpdOEDpfHnIH2Y/R0mqGBl9fy+7QE/8Jnya7iyrNjpcBbEYRa2Spd/hfKpK5o2qij
 RDgtWl5sTWD0YUEMS7ZDHFUyzAYPooDuPB1Zr0636aKvb56e2wj29eg+RpHgBOl+kWrL
 UjC6ot1SXniHR0kWE8At+HBqul0dfohRlCyNI+dp48Ywb9Sq7d6YzjQElKeiZ7YIeBGh
 qlKKAa0axrb5k7oR12o9e5JOP3o/vVLBbQRf8g8juXAglV6qDE8ShFhD0Hqb9AlsAnD9
 bs3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=MM3aKteGZmW/7GayY7dRMfYL0Xw/N+1zNqCVx7UjMoM=;
 fh=SHofx2R2YiD89hIR0fQNBeGZagudU1wZX4M9z2QENdA=;
 b=dZHwaF3nQmKiBT6tLMSHsNqT6zk/e924AC4mj4999PHJ5DZrccjH8SfGqi0NZ9KQO+
 xkO/8XMgcr+NdM4lrI3aPO/xi7sX+a1C3OsdoIn5aKu3FloYFN+4OwAmB/rL/357lAGo
 QbkEeBauTFPDRKZuV8RgyAGJVOsCR6aHIw7LuWVJajAJJt3m1H5/57mNOYl1E4tJ7/p1
 r/rfwkV/OcyBO7b8RQTgJljRF2+sVFr9UnnSsgI2s0xei/CELcTTPnK9tBqyJCoSB6BO
 ssX+0+Ij4EBBTrWYuLzn4PmIZf1YQuVIsnwWPQ8Gqv8Rhk+lq4JW/M6FwDiBFcZJWSlR
 FsbA==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1771857402; x=1772462202;
 darn=lists.sourceforge.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=MM3aKteGZmW/7GayY7dRMfYL0Xw/N+1zNqCVx7UjMoM=;
 b=QHNG1Y01dth02coQzHrAkNgwNffUh6o6jIdHMCiiP4KxlwvtqjmZFVN7ohtK9yq3K4
 EMjd/vJWPBBZMemQFmfqyq41HN3YFjIl5Awi9DAsSAy1bbsf6LvKRS9ifoIHEBi7naoQ
 YQnydmLOA4iwNW9kmKGCU3mioopldYcZxkJgDBfLIEe989ZnLuDHiM3G5wgGQYzZgvqY
 5+KCwBEgdyhmnL0G8dcp/YS7AsIx4gZ9uDMxfWiCLoSsnzLzZ4iiZGY0NHFUSOF5b7Gd
 jqPZdve668xxQKSJcdvQGURQRcqufVoXQZP6D3BjPA2pZOBzQKM+DfrHCsRmzeKBkOJo
 SV+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771857402; x=1772462202;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MM3aKteGZmW/7GayY7dRMfYL0Xw/N+1zNqCVx7UjMoM=;
 b=WRL4y5NLZwpE+t5xRB2zSXh9f/kg1cl7/OzCfbUn86A2t6MDqtE0T60AnDXJrxsfXH
 krQorVv5CRSzMTO8tmQozupJkq65gwioAX9SZfh0qctD1VZe7zcMOtBuQC5GkhBuQGKF
 tjLQ9/9u8i8wKFwWTLYtbDeVVwnarbmensNejGRwN1JM5sZZgacgv2eh3vBnTHe/HVoN
 AjeUNe7cjq4aL/cjlMGlDuEmRgMVq0Tc6/fqH414qjoA2CL2zzu7hkkU+9qjlfYHW155
 7MRtvN+Bmo48PMLTdDbiQzNFEh664SVWAZWc22IJQ6DnoTOvwGjL5bI9n8JZzR6AydMv
 sYcg==
X-Gm-Message-State: AOJu0YyPgepfa/3roewRDbVGIa9lGZj2CwCtknfbzDx8SSpTActypVoY
 NQuvasek5+G+qbz5hie2IcIWQO9YBkTNNykLoThFjrTUMqq+4GYI6Xu89x/BGIupftfTLoWeWV/
 m25sZ8oTcLp6qA4KFmk7YrPdetgG5vNt/+J5cB7rP
X-Gm-Gg: AZuq6aJsVwuju49pCHg8QuV95QxgO9/cwUJo/d7mjLCoPE2VV5d2T4LlnImmG529fnJ
 ZS5wP31l2rUWImDFmyBM5bsV1VHlNfHyu70ixgxkUr/RONvFqsc+ae1Mdw1irO0OrdG/NSUsb0I
 3MO7XJlYCQhWpQANsj6xKIHPHSWfInVHc6DD0N6q5vIRXPfYYSAx91zQwN5DR/owHf0VFnYhDj5
 RPYSqsJKObvywfvHqLFufQyudXBXuAtJmTfETSAgT81lSllgiRLdZ91pUgIHAqrbmxgZmPzwQ/T
 gd4shAwSUVtXNPise90E0JSgSKukPgSpu4cgbg==
X-Received: by 2002:a05:651c:31ce:b0:386:fd3e:bff0 with SMTP id
 38308e7fff4ca-389a5e94213mr23326701fa.39.1771857401229; Mon, 23 Feb 2026
 06:36:41 -0800 (PST)
MIME-Version: 1.0
References: <20260204092230.2540042-1-syzbot@kernel.org>
In-Reply-To: <20260204092230.2540042-1-syzbot@kernel.org>
Date: Mon, 23 Feb 2026 15:36:29 +0100
X-Gm-Features: AaiRm51tCsRBB7oayfu63tMMIZDAgJ7xHZQrvew4IJNGGTC0wVblcq8ltf71rm0
Message-ID: <CACT4Y+YVb8+XkEg2ucfYKjw-J7uy2Om19kzrGkXvkyxa9XTzvQ@mail.gmail.com>
To: syzbot <syzbot@kernel.org>
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 4 Feb 2026 at 10:23,
 syzbot <syzbot@kernel.org> wrote:
 > > UBSAN reported an array-index-out-of-bounds issue in dbFindLeaf: > >
 index 1365 is out of range for type 's8[1365]' (aka 'signed char [...] 
 Content analysis details:   (-7.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM welcome-list
 0.0 ARC_VALID              Message has a valid ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.182 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1vuX3N-0000PJ-9n
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dbFindLeaf
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
From: Dmitry Vyukov via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzbot+1afe7ef2d0062e19eeb3@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, ghandatmanas@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:syzbot@kernel.org,m:shaggy@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:syzbot+1afe7ef2d0062e19eeb3@syzkaller.appspotmail.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:ghandatmanas@gmail.com,m:syzbot@syzkaller.appspotmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,google.com:s=20230601];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.sourceforge.net,syzkaller.appspotmail.com,vger.kernel.org,gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[dvyukov@google.com];
	TAGGED_RCPT(0.00)[jfs-discussion,1afe7ef2d0062e19eeb3];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,google.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,appspotmail.com:email,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 281F917821C
X-Rspamd-Action: no action

On Wed, 4 Feb 2026 at 10:23, syzbot <syzbot@kernel.org> wrote:
>
> UBSAN reported an array-index-out-of-bounds issue in dbFindLeaf:
>
>   index 1365 is out of range for type 's8[1365]' (aka 'signed char[1365]')
>   CPU: 0 UID: 0 PID: 6287 Comm: syz-executor268 Not tainted ...
>   Call Trace:
>    ...
>    __ubsan_handle_out_of_bounds+0x115/0x140 lib/ubsan.c:455
>    dbFindLeaf+0x308/0x520 fs/jfs/jfs_dmap.c:2976
>    dbFindCtl+0x267/0x520 fs/jfs/jfs_dmap.c:1717
>    ...
>
> The issue is caused by an off-by-one error in the bounds check within
> dbFindLeaf. The function traverses the dmap tree to find free blocks.
> It uses a loop to iterate through the levels of the tree, calculating
> the index `x + n` to access the `tp->dmt_stree` array. The variable
> `max_size` represents the size of this array (CTLTREESIZE (1365) for
> dmapctl or TREESIZE (341) for dmaptree).
>
> The bounds check `if (x + n > max_size)` allows `x + n` to be equal to
> `max_size`. However, since the array size is `max_size`, the valid
> indices are `0` to `max_size - 1`. Accessing `tp->dmt_stree[max_size]`
> results in an array-index-out-of-bounds access.
>
> This can occur when the `dmt_height` field in the on-disk structure is
> corrupted or fuzzed to be larger than the fixed height supported by the
> `dmt_stree` array.
>
> Fix this by changing the condition to `>=` to correctly reject indices
> equal to or greater than the array size.
>
> Signed-off-by: syzbot@kernel.org
> Signed-off-by: Dmitry Vyukov <dvyukov@google.com>
> Fixes: 22cad8bc1d36 ("jfs: fix array-index-out-of-bounds in dbFindLeaf")
> Reported-by: syzbot+1afe7ef2d0062e19eeb3@syzkaller.appspotmail.com
> To: <jfs-discussion@lists.sourceforge.net>
> To: "Dave Kleikamp" <shaggy@kernel.org>
> To: "Manas Ghandat" <ghandatmanas@gmail.com>
> Cc: <linux-kernel@vger.kernel.org>
> Cc: <stable@vger.kernel.org>
> ---
> This patch was generated by Google Gemini LLM model.
> It was pre-reviewed and Signed-off-by a human, but please review carefully.
>
> Gerrit code review with full side-by-side diffs:
> https://linux-review.git.corp.google.com/c/linux/kernel/git/torvalds/linux/+/26122
>
> Change-Id: I92f694e86518349eafa132b2ba314d8dfff6c86e
> ---
>
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index cdfa699..18a7dc5 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -2971,7 +2971,7 @@ static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
>                         /* sufficient free space found.  move to the next
>                          * level (or quit if this is the last level).
>                          */
> -                       if (x + n > max_size)
> +                       if (x + n >= max_size)
>                                 return -ENOSPC;
>                         if (l2nb <= tp->dmt_stree[x + n])
>                                 break;
>
> base-commit: 63804fed149a6750ffd28610c5c1c98cce6bd377

Hello jfs maintainers,

Is this patch on anybody radaras? Please merge the fix.
Or should JFS patches now be sent to a generic FS tree for merging?


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
