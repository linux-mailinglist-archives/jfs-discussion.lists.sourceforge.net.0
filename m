Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qI+ZATXEoGnImQQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 23:07:49 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A84D31B0333
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 23:07:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ze/Lj6j1AHxZ/nqczMESo5QZK6hWwawiMa6g7kDxlvU=; b=cFpjpvxFhEloUX3V2caAGN7A1n
	LANuxBVzcX4tkHb9dVWaCmwny2Ae/X7gx6Fx/kGa/VC3FYsJCIEKkKFs9VnkNj3mSq9idQP/vy6/Y
	zKdcbFefne2ofOh9bltX8WNVWiX3Mg05nQ945CykYTpx+kVFAOVb+Cn8fRtA0n1XvK6M=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvjW7-0002yF-Ey;
	Thu, 26 Feb 2026 22:07:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+c5cab09b19de097b6dd3+8222+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1vvjW5-0002y5-OG; Thu, 26 Feb 2026 22:07:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Kg9gzOuUKPXfQ8TifAkHBiU5GSG5v54A0/HGpdATajE=; b=A1QeKKjXWsOxUnRvnSGg3SL5/e
 3mbyg9ALvebvOpPDlzs5nCuPL5CDJoJ5oEh1ZL0Id5YtT2IToMTf+QRLuLWSXkRk0To1fKFYTRKQj
 pd5fw93RdtNI0dS0xZCy+p9voE5M1K4LUsywZttkbhZOlKgzl4DrexxU9p+mNVm4830M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Kg9gzOuUKPXfQ8TifAkHBiU5GSG5v54A0/HGpdATajE=; b=CZctYsSzZfMQXJCOaDlUYVpumV
 zDT28OHHnoqZbsGYc0UAX8TnL1uofFD//YY01t7gj6Zi3eBl77nV9kCJaGFoExndv9Pnopx3ho/ZP
 A66FUUFeIc6JysyroRtBOeYo3cedcRuTGT4vw61Um8T8wSauSIFvdGOrW4l3KweTmJJY=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vvjW5-0007ki-BT; Thu, 26 Feb 2026 22:07:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Kg9gzOuUKPXfQ8TifAkHBiU5GSG5v54A0/HGpdATajE=; b=K7DL8n1QS3fDGk8/1/ItX9kSyq
 wGDsP3RH3tejeQ90Haptd0/T0PuP9s1ekbp6LW1y31cbyrt9nWxqXpDH5yWK910W0H7qDmAOp4mir
 vPyykjX5r2Y9hYE4nuPKuxchdUtNCMGnFo7DpEMxzLsXdtuACqOyH7o+aoj6LwBSld9JPHEVZZaeS
 qBKvr5fqBFTTGOOveTkKaGnpZpaKhIND3S5tdw74N7oTSKyYDDBmUZ77/NuHPY3rtWDa/wNtmot3+
 r6z1pWxyxWHCTDAUm65LDMvRpEaU6e357eJg8d2uGILLtuClnyLAlOgGs7cbZuIkAkYRoS4MeaaqN
 lclBFExg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1vvjVq-00000007HdC-1p3G;
 Thu, 26 Feb 2026 22:07:14 +0000
Date: Thu, 26 Feb 2026 14:07:14 -0800
To: Tal Zussman <tz2294@columbia.edu>
Message-ID: <aaDEEjVKBKrLxsht@infradead.org>
References: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
 <20260225-blk-dontcache-v2-2-70e7ac4f7108@columbia.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260225-blk-dontcache-v2-2-70e7ac4f7108@columbia.edu>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > --- a/fs/bfs/file.c > +++ b/fs/bfs/file.c > @@ -177, 7 +177,
 7
 @@ static int bfs_write_begin(const struct kiocb *iocb, > { > int ret; >
 > - ret = block_write_begin(mapping, pos, len, foliop, bfs_get_b [...] 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vvjW5-0007ki-BT
Subject: Re: [Jfs-discussion] [PATCH RFC v2 2/2] block: enable RWF_DONTCACHE
 for block devices
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
From: Christoph Hellwig via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christoph Hellwig <hch@infradead.org>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Yuezhang Mo <yuezhang.mo@sony.com>,
 Bob Copeland <me@bobcopeland.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-mm@kvack.org, linux-nilfs@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Namjae Jeon <linkinjeon@kernel.org>, linux-block@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>, Jens Axboe <axboe@kernel.dk>,
 Christian Brauner <brauner@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-7.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.sourceforge.net,suse.cz,sony.com,bobcopeland.com,paragon-software.com,kvack.org,vger.kernel.org,infradead.org,zeniv.linux.org.uk,gmail.com,kernel.dk,samsung.com,linux-foundation.org,lists.linux.dev];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,infradead.org:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,infradead.org:s=bombadil.20210309];
	TAGGED_RCPT(0.00)[jfs-discussion];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[hch@infradead.org];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,infradead.org:mid,infradead.org:replyto]
X-Rspamd-Queue-Id: A84D31B0333
X-Rspamd-Action: no action

> --- a/fs/bfs/file.c
> +++ b/fs/bfs/file.c
> @@ -177,7 +177,7 @@ static int bfs_write_begin(const struct kiocb *iocb,
>  {
>  	int ret;
>  
> -	ret = block_write_begin(mapping, pos, len, foliop, bfs_get_block);
> +	ret = block_write_begin(iocb, mapping, pos, len, foliop, bfs_get_block);

Please don't change the prototoype for block_write_begin and thus
cause churn for all these legacy file systems.  Add a new
block_write_begin_iocb, and use that in the block code and to implement
block_write_begin.

And avoid the overly long line there to keep the code readable.

Note that you also need to cover the !CONFIG_BUFFER_HEAD case.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
