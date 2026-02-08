Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHXzFn1HiGnhmwQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Sun, 08 Feb 2026 09:21:17 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8050710818C
	for <lists+jfs-discussion@lfdr.de>; Sun, 08 Feb 2026 09:21:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1aZg7JFmXmgHKlfD6xr1s+jqzY0SlhOK+ceu0afMWlA=; b=HB97Rm5qLhaLLXlbwps+EpOacP
	M2fEpMZJdzK7nOm4uDpteTixnJmVAzXL8PNU5NzW4P02HaMLHBmXab5knKEgLhfMVpy2Ar0RZd6/b
	gCftCFj6zgTDLCEmxNqoKFqcMOqEtsNawVtHZkZd4FYhuJHhzzRX6U3T8lMGgmafp6js=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vp01j-0002o6-Ac;
	Sun, 08 Feb 2026 08:20:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zlatistiv@gmail.com>) id 1vp01h-0002o0-QV
 for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Feb 2026 08:20:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AA+LxrfEqBJCeppYnfBQMgProGOSges9FPVZZ3/gDXc=; b=bvGCJ3rEXGbkqg5ryJFuNf6PT1
 jG5icC3TwGVM/9mS2a+dl0fJrUX1It0QM0RF1rTfEaEtKEtoG1rpRF7aI5vybrqkKdzEaybIVMW3w
 9wZhsCKx+7XtswTrcQV7HoxKCZmgIWt9AAFNs86LuJ0Ah32ZlJbclw7z+leKg6CKDd10=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AA+LxrfEqBJCeppYnfBQMgProGOSges9FPVZZ3/gDXc=; b=fo4W6yty3/hvxmBGQwOZNox0Qn
 B1a/CIPW+EPW2Gcp+5TzY1HfPyZn2cK+4/rNeZKChna72O/VaBxlx9t/aCSPh45aqx7hKrk0GX/S5
 GKmrw/zFdLJWGrvPttODxxWJp0qIUZgHy0lXWm0+d1mBEcHmTPHQDFT30+3OjutshH98=;
Received: from mail-wr1-f43.google.com ([209.85.221.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vp01h-00053V-AO for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Feb 2026 08:20:17 +0000
Received: by mail-wr1-f43.google.com with SMTP id
 ffacd0b85a97d-436317c80f7so619500f8f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 08 Feb 2026 00:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770538806; x=1771143606; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=AA+LxrfEqBJCeppYnfBQMgProGOSges9FPVZZ3/gDXc=;
 b=D2XVEmay7D/cbJA5wZNtAlYitX/OCHsGd/C+RXGH+8vcXRHSqTkIzxeYsu13akUyxp
 IIQUET4xTBaHeIYFRvtmUjQWUK9pg8ZoZtwKen6D2aM1X9tRvJky6+insbuv7kg5Hhtw
 lltWu19qTyNVMimFg+DFQ3KE0Pr7jptopqhbct7YzzbAlr2sRrcjADn4ZYkGoWaLlcMI
 iYuIV10urY7QZ+RK6ERYR6F4vhYVWdJJsWDHSpnUcsrCxgi8mcKXoUVwbJQe9WDgU9Su
 2d9CdBIZ0qmxFgp2CJ/LA6zupIf7vW4cnQ5VfvxPYi7JmJHbLgWNis2nmfYn+N0QSUQD
 czCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770538806; x=1771143606;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AA+LxrfEqBJCeppYnfBQMgProGOSges9FPVZZ3/gDXc=;
 b=KOdIpEufivmUIQiMGgBJAD5oitS3bduGFbVfrH9sW1FEguBDu+bGafk8bYLcLteOYt
 9b9cdIEfyXLAGZ2fXzMYoFM25xKaD1lQyL7s8Jv86AI0eXQYDYyQ+N0o17Uyq2ldnkWT
 fViiT0gHGsA819H1xTkNqKygZdUJyJiB+WIMQ/5WPpPNcfiCcNBJXqJZfy4AwpWdQgDP
 CljKn6T/jWw7Mo+ourOQTvZMJc0i5jZ4oYsBcENS4asKpM4vRiJAnyGvOtONVUP2d5Ae
 VkKJXOhVz0K2Uu/vXzO+DoFWOLO0NzFIfpkfcHBAitZwnHwiFYm5tiuvdXElnZRKfCd3
 4OhQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWYU3FYy7Uoyt+6tWzg1ujLVBWkeFCKhHwIRfL/pRMjV5/Mt4K43DtaFlwTe1EmHZ3Ydxs26K6LUuJPR2C3pw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yyf+UWR8nRluyvvwavZoIdWt0jbooXbLz9X8WCLKKiZJJsAg0U8
 oOy2qs1bFZ/lNgRA8wK6TZ/U2HMIt0jmchec8DBBzU9++YMt8JevI2iw
X-Gm-Gg: AZuq6aLCGeFr4zBiGDB8IV1AJYbJUlrDbIjaH9j9qJ+D1iyaXR0EAWo4sUWwLTUPx22
 4MSeueg3nvbt6qLpREB2Q/6yOHAkxRozBpeLKPEDLh+gXasec4JAEOdE9BIrANHP9q6EjNRuE5L
 ZOGBloew7cd9XU/S5d+EEExkWAQI1wKQ8H4A8IiBe1CJSxiOxJfaqJtfqLUu/Dj1MxrhGRmFuXj
 CmF00CpGSkpfxlknZHgpY/hqA9dqp04wGlDxeA1UvQm37iWtcAJO5mwmyGPqF/4NfeXGvATQDts
 u4Bx7riXYj0hJX5BLTqM4YhplMZCLBNKzXOl1OAGS/1h1Wtl1YSgIvo1PuOfjPxzlq0l6jPYrJ/
 hf3AZSHPaOtpx81MEVUpee57AzqcnCR4n3lXeDISrfNewCQvEsNsmaX41zqeRlDe8ftF7oHDpAh
 vJzPG1D27Hh6JQz+g4t584fsmz10/H3PRl1K39gqNTx71oeCWe4nXp8w==
X-Received: by 2002:a5d:5d89:0:b0:435:9a18:5a29 with SMTP id
 ffacd0b85a97d-436209966ddmr20697343f8f.11.1770538805560; 
 Sun, 08 Feb 2026 00:20:05 -0800 (PST)
Received: from ?IPV6:2a01:5a8:304:153c:3ab3:7a9:6529:7104?
 ([2a01:5a8:304:153c:3ab3:7a9:6529:7104])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43629754c62sm16678514f8f.38.2026.02.08.00.20.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Feb 2026 00:20:05 -0800 (PST)
Message-ID: <20d908f6-14ff-42dd-9e09-1b0c997efe6e@gmail.com>
Date: Sun, 8 Feb 2026 10:20:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: shaggy@kernel.org, dmantipov@yandex.ru, quic_zhonhan@quicinc.com,
 eadavis@qq.com, jfs-discussion@lists.sourceforge.net
References: <20260102184849.1932768-1-zlatistiv@gmail.com>
Content-Language: en-US
In-Reply-To: <20260102184849.1932768-1-zlatistiv@gmail.com>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/2/26 8:48 PM, Nikola Z. Ivanov wrote: > syzbot reports
 "VFS: Busy inodes after unmount" which is caused > by a deadlock in the
 jfsCommit
 thread, in a call to diFree. > > The filesystem from the [...] 
 Content analysis details:   (0.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.221.43 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [zlatistiv(at)gmail.com]
 1.0 FORGED_GMAIL_RCVD 'From' gmail.com does not match 'Received' headers
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.43 listed in wl.mailspike.net]
X-Headers-End: 1vp01h-00053V-AO
Subject: Re: [Jfs-discussion] [PATCH] jfs: Check for discrepancies between
 iag and inomap iagctl
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
From: "Nikola Z. Ivanov via Jfs-discussion"
 <jfs-discussion@lists.sourceforge.net>
Reply-To: "Nikola Z. Ivanov" <zlatistiv@gmail.com>
Cc: syzbot+d569e274f46ca86f78fa@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.71 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:shaggy@kernel.org,m:dmantipov@yandex.ru,m:quic_zhonhan@quicinc.com,m:eadavis@qq.com,m:jfs-discussion@lists.sourceforge.net,m:syzbot+d569e274f46ca86f78fa@syzkaller.appspotmail.com,m:linux-kernel@vger.kernel.org,m:syzbot@syzkaller.appspotmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,yandex.ru,quicinc.com,qq.com,lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	NEURAL_HAM(-0.00)[-0.903];
	RCPT_COUNT_SEVEN(0.00)[7];
	HAS_REPLYTO(0.00)[zlatistiv@gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[jfs-discussion,d569e274f46ca86f78fa];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[syzkaller.appspot.com:url,appspotmail.com:email]
X-Rspamd-Queue-Id: 8050710818C
X-Rspamd-Action: no action


On 1/2/26 8:48 PM, Nikola Z. Ivanov wrote:
> syzbot reports "VFS: Busy inodes after unmount" which is caused
> by a deadlock in the jfsCommit thread, in a call to diFree.
>
> The filesystem from the syz repro can be used to reproduce the
> deadlock by mounting it, deleting a file and running "sync" or
> unmounting the filesystem. Running "fsck" on the filesystem
> image seemingly fixes the inconsistency and we no longer deadlock.
>
> This happens because the IAG that contains the inode we are
> freeing is head of the free list, but also holds nfreeinos = 0,
> which will lead to a deadlock when we try to add it as head
> of the free list, since it already is head of the list.
>
> Fix this by adding a check for the discrepancy before
> reading more metapages that could potentially match with "mp".
> Do the same for the extent free list as it may lead to a
> similar deadlock.
>
> Reported-by: syzbot+d569e274f46ca86f78fa@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=d569e274f46ca86f78fa
> Signed-off-by: Nikola Z. Ivanov <zlatistiv@gmail.com>
> ---
>   fs/jfs/jfs_imap.c | 19 +++++++++++++++++++
>   1 file changed, 19 insertions(+)
>
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index ecb8e05b8b84..fd9f9babaf46 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -902,6 +902,25 @@ int diFree(struct inode *ip)
>   	}
>   	iagp = (struct iag *) mp->data;
>   
> +	/* We will deadlock if due to inconsistency
> +	 * the iag has no free inodes/extents but is
> +	 * head of the respective free list
> +	 */
> +	if (iagp->nfreeinos == 0 && imap->im_agctl[agno].inofree == iagno) {
> +		IREAD_UNLOCK(ipimap);
> +		AG_UNLOCK(imap, agno);
> +		release_metapage(mp);
> +		jfs_error(ip->i_sb, "nfreeinos = 0, but iag is head of freelist\n");
> +		return -EIO;
> +	}
> +	if (iagp->nfreeexts == 0 && imap->im_agctl[agno].extfree == iagno) {
> +		IREAD_UNLOCK(ipimap);
> +		AG_UNLOCK(imap, agno);
> +		release_metapage(mp);
> +		jfs_error(ip->i_sb, "nfreeexts = 0, but iag is head of freelist\n");
> +		return -EIO;
> +	}
> +
>   	/* get the inode number and extent number of the inode within
>   	 * the iag and the inode number within the extent.
>   	 */

Hello,


Kindly sending a reminder on this in case this slipped through the cracks.

In case jfs is at the point where syzkaller bugs are not worth the

effort please let us know since I was unable to find a definitive

answer in the mail archive.


Thank you!



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
