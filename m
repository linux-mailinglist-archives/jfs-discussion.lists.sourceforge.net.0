Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNv9HWi2n2mKdQQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 03:56:40 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6481A03C7
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 03:56:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sZEIpNnI1zXgOXIpO3kzOHKsLEGhmyb7MEc+s0AztF4=; b=Q4/2gbejDrRQjZ7ESXC2Dkj4UI
	yxsra9sSra8QiQNifvpng7vCvJ3+DfmitAdzu4LQ44SWMjwo85fkNUWqOVPopQXQqmHhhvGfj3NxQ
	mTfXFfj5mVi3egRjfOHEUReOfqL4XrPjOGdkkq/UkC6kcDa8A2LEvnZoPu9xbaXgeu10=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvRXX-0002C6-CO;
	Thu, 26 Feb 2026 02:55:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1vvRXW-0002Bv-3i;
 Thu, 26 Feb 2026 02:55:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YhcyepidlpHsmGgGlbRMBKJer3APQ37SWyjKz6GiydU=; b=fqrvteoWN/SO6TH531MgfPWx+x
 Bm32h9UnbZz+WLbXnDJp+OBwitJx2jt3L2/vIjqY47zrhXIa9NYGdmt7jHv1NGIhRJcci70jY0dzP
 5iks8HAyu4K15xaudvDvUAJSsKJJgRL/rqYA5WmUdBM3lcf2qydegzH6aN4vdr0ZAdR4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YhcyepidlpHsmGgGlbRMBKJer3APQ37SWyjKz6GiydU=; b=AB3g1rHdyM8yPBUGspNfLRfXdY
 TQkf6RAd2r0GHst/GuovAtebZDTQdt2OcGZFWmM+jQfh5T4t5aBBV0nwzB2O4HtGn3/qDOQ5THCvN
 QZ9DLWWe0RUh6prfa2pcrf887PtmIJj8oGasXaj3vtvNA5E7nV/NOiMCdrHWOJC5AnLk=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vvRXV-0006Kx-Er; Thu, 26 Feb 2026 02:55:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=YhcyepidlpHsmGgGlbRMBKJer3APQ37SWyjKz6GiydU=; b=lT4z/kxJOpRr2y8PL3itayYgJ3
 i7ZwoiMb1z2uyIxU40ivVgqHH9trh+os4979z2Zqho9027f2XMpjQwXu4WrFWsVhiC7TPeJPMFiWA
 gY5Nx0DUj/IlPs4LB5T3TQX9JwzlCZKXG/qNd44L3nFJxmZwkUt/c5d4yVFzQMVrqTMgiAckXiQQv
 VXSOgWR4lM/M5fbsc7o8/LNO/njgdgbDcnsTUTjWfa2X7I1OeE/KtKZWKBd50xC/8qWXOdJrRtHxa
 bjHSfDSEJawaj9ug3LKsibAnOPgnzmVmc7GOT2cW8fy/u0uTmIAJ5HciOQcjzplM+oJiP/C0Gl3mu
 rjc+CEBg==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1vvRX9-000000024RA-1i48;
 Thu, 26 Feb 2026 02:55:23 +0000
Date: Thu, 26 Feb 2026 02:55:23 +0000
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <aZ-2G_6lDZePLSyx@casper.infradead.org>
References: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
 <20260225-blk-dontcache-v2-1-70e7ac4f7108@columbia.edu>
 <c8078a80-f801-4f8a-b3cd-e2ccbfca1def@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c8078a80-f801-4f8a-b3cd-e2ccbfca1def@kernel.dk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Feb 25, 2026 at 03:52:41PM -0700, Jens Axboe wrote:
 > How well does this scale? I did a patch basically the same as this, but
 > not using a folio batch though. But the main sticking point was [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vvRXV-0006Kx-Er
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
From: Matthew Wilcox via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Matthew Wilcox <willy@infradead.org>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Yuezhang Mo <yuezhang.mo@sony.com>,
 Bob Copeland <me@bobcopeland.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-mm@kvack.org, linux-nilfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 Namjae Jeon <linkinjeon@kernel.org>, linux-block@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 Tal Zussman <tz2294@columbia.edu>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Christian Brauner <brauner@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 linux-kernel@vger.kernel.org,
 "Vishal Moola \(Oracle\)" <vishal.moola@gmail.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 ntfs3@lists.linux.dev, linux-karma-devel@lists.sourceforge.net
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
	RCPT_COUNT_TWELVE(0.00)[24];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,infradead.org:s=casper.20170209];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.sourceforge.net,suse.cz,sony.com,bobcopeland.com,paragon-software.com,kvack.org,vger.kernel.org,zeniv.linux.org.uk,gmail.com,columbia.edu,samsung.com,linux-foundation.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[jfs-discussion];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[willy@infradead.org];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,infradead.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[casper.infradead.org:mid,infradead.org:replyto,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 7B6481A03C7
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 03:52:41PM -0700, Jens Axboe wrote:
> How well does this scale? I did a patch basically the same as this, but
> not using a folio batch though. But the main sticking point was
> dropbehind_lock contention, to the point where I left it alone and
> thought "ok maybe we just do this when we're done with the awful
> buffer_head stuff". What happens if you have N threads doing IO at the
> same time to N block devices? I suspect it'll look absolutely terrible,
> as each thread will be banging on that dropbehind_lock.
> 
> One solution could potentially be to use per-cpu lists for this. If you
> have N threads working on separate block devices, they will tend to be
> sticky to their CPU anyway.

Back in 2021, I had Vishal look at switching the page cache from using
hardirq-disabling locks to softirq-disabling locks [1].  Some of the
feedback (which doesn't seem to be entirely findable on the lists ...)
was that we'd be better off punting writeback completion from interrupt
context to task context and going from spin_lock_irq() to spin_lock()
rather than going to spin_lock_bh().

I recently saw something (possibly XFS?) promoting this idea again.
And now there's this.  Perhaps the time has come to process all
write-completions in task context, rather than everyone coming up with
their own workqueues to solve their little piece of the problem?

[1] https://lore.kernel.org/linux-block/20210730213630.44891-1-vishal.moola@gmail.com/


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
