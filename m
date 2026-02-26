Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kA6OCmq3oGnClwQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 22:13:14 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6643B1AF86C
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 22:13:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NQfN+1mrkiv9h6KQpsQ+Qr28zaloW4cOD2r+E8VEqNY=; b=Tno6ThOZ/ouP4AVc8QCTocVbqd
	u40Q6qcQhA89OlI0qAJ2lneKyoIYHRapIXdnu95n6Y3ixxw9Uk8dlcqZmbD+2TRQSjjWAiYI78DXM
	XB1WLuuDbVE/ysdbTjRqvxe2+C5uSdK7bbhpexwqgul9tjtSpdny4WnN3WEz0xFWS2uY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvif0-0001IH-3V;
	Thu, 26 Feb 2026 21:12:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1vview-0001I6-C4;
 Thu, 26 Feb 2026 21:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cxjFK2I1rFqs+rF+S3xFy7UtO9xYKfa9VhNCsIXi0UM=; b=bQ6+GM+Hy9ihg8f3+QAr0mLLA9
 d2soeYPqj/Gn0vr33LIfF5uE21zhSAz1n38Oa/rb2bNBRLWFrHnpNuh/1f5c1oSScWECjV08XJbua
 IctMsIuQ/J1S/cBQvXaoe8LdUdhX5uqp4ORmCf/n+gtyIW788uMdzuDcZuIb3iOw+WEo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cxjFK2I1rFqs+rF+S3xFy7UtO9xYKfa9VhNCsIXi0UM=; b=NtJZAzlUTrLPdKQOfPCqOnsh9K
 W20lB2fymAfgPkxKC0BckpLH51y7UDJ6B76574QdkUz4v3lf0uyD7jwKxRV/oaAt19V6upsq6QsyP
 RGYE7DWP2dN4Moa6n+TZ3QOgsqSyXuhYOZINBhpTWi/Yu8oYWYyU+CGyWUhI3DeO5nkM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vviev-0005dg-TB; Thu, 26 Feb 2026 21:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=cxjFK2I1rFqs+rF+S3xFy7UtO9xYKfa9VhNCsIXi0UM=; b=lgkspXoZtskd+nEFTO7IHEtKtY
 QTWQeCvLBoCUJsiEPlwCe6SWhlX4OpH4sfIcf973/D/KHKtxmL7cdhI6EVPhq+88YezeXjnYeF9/k
 lTBC4JUAHiw0PjPxqQDKyXesl0LB4Vk4iaFTKfzl2Tl3I2RHXTu5RqbQRomZRKajicLkxk1Zc3Cgl
 EA9AE9Aq8Dj+/BUR9USybQncuYrIbgeNeLca3LgZvkDQDBJlBeBiGdrYoUnF5XrvaNGooNpTfJR43
 oaTeNczWoFDSM88QQWW6khDtS0804E+RmfZTXk4WzycI+T/ry+ky6kMNEO4z3lOlB81Jk2mHVpBQg
 Mtjq8aOQ==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1vviec-00000003Sxg-0gjd;
 Thu, 26 Feb 2026 21:12:14 +0000
Date: Thu, 26 Feb 2026 21:12:13 +0000
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <aaC3LUFa1Jz2ahk3@casper.infradead.org>
References: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
 <20260225-blk-dontcache-v2-1-70e7ac4f7108@columbia.edu>
 <c8078a80-f801-4f8a-b3cd-e2ccbfca1def@kernel.dk>
 <aZ-2G_6lDZePLSyx@casper.infradead.org>
 <44e3e9ea-350b-4357-ba50-726e506feab5@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44e3e9ea-350b-4357-ba50-726e506feab5@kernel.dk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Feb 25, 2026 at 08:15:28PM -0700, Jens Axboe wrote:
 > On 2/25/26 7:55 PM, Matthew Wilcox wrote: > > I recently saw something
 (possibly XFS?) promoting this idea again. > > And now there's this [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vviev-0005dg-TB
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.sourceforge.net,suse.cz,sony.com,bobcopeland.com,paragon-software.com,kvack.org,vger.kernel.org,zeniv.linux.org.uk,gmail.com,columbia.edu,samsung.com,linux-foundation.org,lists.linux.dev];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,infradead.org:s=casper.20170209];
	TAGGED_RCPT(0.00)[jfs-discussion];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[willy@infradead.org];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,infradead.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[casper.infradead.org:mid,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 6643B1AF86C
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 08:15:28PM -0700, Jens Axboe wrote:
> On 2/25/26 7:55 PM, Matthew Wilcox wrote:
> > I recently saw something (possibly XFS?) promoting this idea again.
> > And now there's this.  Perhaps the time has come to process all
> > write-completions in task context, rather than everyone coming up with
> > their own workqueues to solve their little piece of the problem?
> 
> Perhaps, even though the punting tends to suck... One idea I toyed with
> but had to abandon due to fs freezeing was letting callers that process
> completions in task context anyway just do the necessary work at that
> time. There's literally nothing worse than having part of a completion
> happen in IRQ, then punt parts of that to a worker, and need to wait for
> the worker to finish whatever it needs to do - only to then wake the
> target task. We can trivially do this in io_uring, as the actual
> completion is posted from the task itself anyway. We just need to have
> the task do the bottom half of the completion as well, rather than some
> unrelated kthread worker.
> 
> I'd be worried a generic solution would be the worst of all worlds, as
> it prevents optimizations that happen in eg iomap and other spots, where
> only completions that absolutely need to happen in task context get
> punted. There's a big difference between handling a completion inline vs
> needing a round-trip to some worker to do it.

I spoke a little hastily when I said "all write completions".  What I
really meant was something like:

+++ b/block/bio.c
@@ -1788,7 +1788,9 @@ void bio_endio(struct bio *bio)
        }
 #endif

-       if (bio->bi_end_io)
+       if (!in_task() && bio_flagged(bio, BIO_COMPLETE_IN_TASK_CONTEXT))
+               bio_queue_completion(bio);
+       else if (bio->bi_end_io)
                bio->bi_end_io(bio);
 }
 EXPORT_SYMBOL(bio_endio);

and then the submitter (ie writeback) would choose to set
BIO_COMPLETE_IN_TASK_CONTEXT.  And maybe others (eg fscrypt) would
want to do the same.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
