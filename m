Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIovHp3DoGnImQQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 23:05:17 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C31D71B02DD
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 23:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f+PjJ/e/ZDdWQgdMnai5Bt92ZSpy7B6wQ6P/KAtmkJU=; b=XkSl2RMn6nkmk3xsFzcXSiWLsU
	KtrIiSOUrgfIc+omZ0s2tLlX1U9JPz38Xh5pH1vHKmp6tX7lpCqyUy1bHxdGp6GtL2+iX1SlSBLnQ
	h5L51O6ieP66MPrJaMjXt/yBR7jKr3fHnkajBqfp7Oi3xh1UsmicYEaVUmI5CDZj8V+8=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvjT7-0002uc-TQ;
	Thu, 26 Feb 2026 22:04:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+c5cab09b19de097b6dd3+8222+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1vvjT6-0002uN-PE; Thu, 26 Feb 2026 22:04:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5bu012TDyQPUO/wvA+hw2yCZC4iVJmbX0faG8R4aVOY=; b=SYbLGmrO86s0WdFtHWpKcjxYSP
 izfFe8bGwAV763qGY+L8dA3CZvNIthaAXJltLcIT43EJFvvKb8miSnTK3anmyON632Kd/0YN2nBJ5
 QEpIsSDxCpEZhCvRmUgugb6sJrzIuUWTlCtCf9EHybhIsHr/LkmElyaKIbIuVaCWCn7s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5bu012TDyQPUO/wvA+hw2yCZC4iVJmbX0faG8R4aVOY=; b=HEuMCEvEEtzXgM7HRjWx/ugGs1
 mPZjkZt/wRRdqqJ1Y7FVbPGHH9mKMZSI/XO9fxmYSja+VfxXLc55VSIQfrA8EojZea2PygkzzhnoT
 leog2TkZ6EhUdyUx1O5jhkI1zRftjIRFQHaxukaXY8kh2AKyr+ZZKW6sy7lrj7wsmYUM=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vvjT5-0007ad-PI; Thu, 26 Feb 2026 22:04:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5bu012TDyQPUO/wvA+hw2yCZC4iVJmbX0faG8R4aVOY=; b=bmFMChbeXAKmL9O3h8bmg/4rBu
 So6ch1NZnvPbScRns188h7F/rGcpYLcQKPAND1O3tIhaTGfhesfRyaEMSiOck1t/7GJsgSW8By+oe
 I+6h8JlmxarQ7tRM8QL1c2VrCrvGumCicDKwneDLTqcbq1r6v3CDKHoyLopBGteCJSC60/gK3Y1Yk
 MRRGFix+j8wkBUHPxiSbKO/MbA5YC5+uJtdTB0P2eoY48gBiPsdaoS5Qu4rfUdcP7hGztuzf9N5u4
 12HyGuT1qf4DoCAjblkVAff52JDrreI7lolCOWuTuFqA/U3Nt/x3bhEUV4uHKYQsn6JOd0Y6uf9QB
 Nm0hpEWQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1vvjSr-00000007HXz-3kME;
 Thu, 26 Feb 2026 22:04:09 +0000
Date: Thu, 26 Feb 2026 14:04:09 -0800
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <aaDDWQ3gc4BWH2d_@infradead.org>
References: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
 <20260225-blk-dontcache-v2-1-70e7ac4f7108@columbia.edu>
 <c8078a80-f801-4f8a-b3cd-e2ccbfca1def@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c8078a80-f801-4f8a-b3cd-e2ccbfca1def@kernel.dk>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Feb 25, 2026 at 03:52:41PM -0700, Jens Axboe wrote:
 > One solution could potentially be to use per-cpu lists for this. If you
 > have N threads working on separate block devices, they will tend [...] 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [198.137.202.133 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: infradead.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vvjT5-0007ad-PI
Subject: Re: [Jfs-discussion] [PATCH RFC v2 1/2] filemap: defer dropbehind
 invalidation from IRQ context
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
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 "Darrick J. Wong" <djwong@kernel.org>, linux-ext4@vger.kernel.org,
 Namjae Jeon <linkinjeon@kernel.org>, linux-block@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 Tal Zussman <tz2294@columbia.edu>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.sourceforge.net,suse.cz,sony.com,bobcopeland.com,paragon-software.com,kvack.org,vger.kernel.org,infradead.org,zeniv.linux.org.uk,gmail.com,columbia.edu,samsung.com,linux-foundation.org,lists.linux.dev];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,infradead.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:mid,infradead.org:replyto,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: C31D71B02DD
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 03:52:41PM -0700, Jens Axboe wrote:
> One solution could potentially be to use per-cpu lists for this. If you
> have N threads working on separate block devices, they will tend to be
> sticky to their CPU anyway.

Having per-cpu lists would be nice, but I'd really love to have them
in iomap, as we have quite a few iomap features that would benefit
from generic offload to user context on completion.  Right now we
only have code for that in XFS, and that's because the list is anchored
in the inode.  Based on the commit message in cb357bf3d105f that's
intentional for the write completions there, but for all other
completions a generic per-cpu list would probably work fine.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
