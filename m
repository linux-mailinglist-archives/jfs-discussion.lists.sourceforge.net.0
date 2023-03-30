Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F34B6D0EDA
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 21:31:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phxzj-00028v-B0;
	Thu, 30 Mar 2023 19:31:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dsterba@suse.cz>) id 1phxzg-00028o-HB
 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 19:31:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Etjp+xE3FIW3A1xPIHa1sQtyQ4/Nn9crT5hD184o2SA=; b=QlOIz6KnNALO64KWG+evhOlL/1
 Vs4ZEwpUqZpNX8Zowi1zEONWGjRYly8c3XbCnLLe7g8QuwThHLxWpHystCwOIS9SLuNSufjIN0w1X
 eaNmtw+GBsb4oMaZ7+tdzRrq+TO+gibubVUKoXep6Tt9h2GSU38yLlL90pcYdWg2T3S0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Etjp+xE3FIW3A1xPIHa1sQtyQ4/Nn9crT5hD184o2SA=; b=Uwm/Uqs2GcU5goC9c8CDDOCL1T
 FXVJnFp72yPIsiqFiT2aFTPKoa4BOKv2B3+dZp96wNQJ1+8bZTmaCZKC9mRtPuXYcGb3OVpAiG49C
 GCshdY+pT0hWKRyJae4obs8hIZt3diloSeFEBOQKCWvUrUHvUX9YKIXjL/1z/sGb0RjE=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1phxzb-0003Kb-Ct for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 19:31:31 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 96F501FE07;
 Thu, 30 Mar 2023 19:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1680204678;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Etjp+xE3FIW3A1xPIHa1sQtyQ4/Nn9crT5hD184o2SA=;
 b=aHv++cdpXPaXb26/G1LMYwclQgZ4Qx/cyWFa0fjo70P5nNjzjoHIeWQSajl20M1XZZkoz2
 ZwgPzABCzOE8C4i0glI8NLuVt6p2eWDvwk3FK3zK7SXAeXYSpz3JpQIfG2AbcvOChVT7+9
 1qTNvdPzYgEM+d96UTjl0NgotnSkQr4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1680204678;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Etjp+xE3FIW3A1xPIHa1sQtyQ4/Nn9crT5hD184o2SA=;
 b=wYPbuyHqUYLobbGSEtgz4W8ycI8q3CtaKnbPUQGE+5MzS+bueBw/fljFzrPU/2rA5fyNzR
 A2+wNxH4qiVKtHBA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 200FE133E0;
 Thu, 30 Mar 2023 19:31:18 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id 77P7BobjJWQBRQAAMHmgww
 (envelope-from <dsterba@suse.cz>); Thu, 30 Mar 2023 19:31:18 +0000
Date: Thu, 30 Mar 2023 21:25:03 +0200
From: David Sterba <dsterba@suse.cz>
To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
Message-ID: <20230330192503.GT10580@twin.jikos.cz>
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
 <20230330154529.GS10580@twin.jikos.cz>
 <9835fc72-18b4-517d-0861-b5b413252eb9@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9835fc72-18b4-517d-0861-b5b413252eb9@wdc.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 30, 2023 at 04:41:58PM +0000, Johannes Thumshirn
 wrote: > On 30.03.23 17:52, David Sterba wrote: > > On Thu, Mar 30, 2023
 at 03:43:42AM -0700, Johannes Thumshirn wrote: > >> We have two fu [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
X-Headers-End: 1phxzb-0003Kb-Ct
Subject: Re: [Jfs-discussion] [PATCH v2 00/19] bio: check return values of
 bio_add_page
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
Reply-To: dsterba@suse.cz
Cc: Dave Kleikamp <shaggy@kernel.org>, "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, Song Liu <song@kernel.org>,
 "dm-devel@redhat.com" <dm-devel@redhat.com>, Christoph Hellwig <hch@lst.de>,
 Andreas Gruenbacher <agruenba@redhat.com>,
 Matthew Wilcox <willy@infradead.org>,
 "cluster-devel@redhat.com" <cluster-devel@redhat.com>,
 Chaitanya Kulkarni <kch@nvidia.com>, Mike Snitzer <snitzer@kernel.org>,
 Ming Lei <ming.lei@redhat.com>,
 "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 Bob Peterson <rpeterso@redhat.com>, Hannes Reinecke <hare@suse.de>,
 David Sterba <dsterba@suse.com>, Jens Axboe <axboe@kernel.dk>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, "dsterba@suse.cz" <dsterba@suse.cz>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Mar 30, 2023 at 04:41:58PM +0000, Johannes Thumshirn wrote:
> On 30.03.23 17:52, David Sterba wrote:
> > On Thu, Mar 30, 2023 at 03:43:42AM -0700, Johannes Thumshirn wrote:
> >> We have two functions for adding a page to a bio, __bio_add_page() which is
> >> used to add a single page to a freshly created bio and bio_add_page() which is
> >> used to add a page to an existing bio.
> >>
> >> While __bio_add_page() is expected to succeed, bio_add_page() can fail.
> >>
> >> This series converts the callers of bio_add_page() which can easily use
> >> __bio_add_page() to using it and checks the return of bio_add_page() for
> >> callers that don't work on a freshly created bio.
> >>
> >> Lastly it marks bio_add_page() as __must_check so we don't have to go again
> >> and audit all callers.
> >>
> >> Changes to v1:
> >> - Removed pointless comment pointed out by Willy
> >> - Changed commit messages pointed out by Damien
> >> - Colledted Damien's Reviews and Acks
> >>
> >> Johannes Thumshirn (19):
> > 
> >>   btrfs: repair: use __bio_add_page for adding single page
> >>   btrfs: raid56: use __bio_add_page to add single page
> > 
> > The btrfs patches added to misc-next, thanks.
> > 
> 
> Thanks but wouldn't it make more sense for Jens to pick up all of them?
> The last patch in the series flips bio_add_pages() over to
> __must_check and so it'll create an interdependency between the
> btrfs and the block tree.

I'd rather take it via btrfs tree, this avoids future merge conflicts.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
