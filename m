Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DC6661A07
	for <lists+jfs-discussion@lfdr.de>; Sun,  8 Jan 2023 22:32:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pEdGl-0008BW-WC;
	Sun, 08 Jan 2023 21:31:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1pEdGe-0008BL-DE
 for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 21:31:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=++R3apswKn917ceG4txQXiZ1LJjLtj+nBEmEVXkWhS8=; b=WeWjHXy6Iyp8lOXBjudW1Ut89U
 oDInDXUnwqeiCToVlG0V2oXxyRT+JP1OeKAnyyt2aPbqmHMSG3EVAaGPyIQouS5PGJBi7xWlQ0/S4
 DRDxpaNVtVGN+NSmOiN3bIGG7mL/uQT5kG0DOb6y1GpOzLrE9jfV9Ve4NZyXXzkDXKeY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=++R3apswKn917ceG4txQXiZ1LJjLtj+nBEmEVXkWhS8=; b=hFxcZvJ2t1NYuIvvZo3e9IcyOT
 jGlQNaBEOlbioJ45SL0o/2k1+m9jrB9Ab1M95GwErB90OvLA1k9u/aqZ66yj2+dWS8aRRMy6ARxJe
 qNa/sWiooJNZZMTkgKTsSgQd+0jJ1BTou9WxFDPCHBOMYtQEDrZ5GEmblFfsSc2a069I=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pEdGd-00AbZY-Mu for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 21:31:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=++R3apswKn917ceG4txQXiZ1LJjLtj+nBEmEVXkWhS8=; b=dm/cLFNaKZAOrFlytHsOvTk2Jr
 ez8yteUWEcM+9Gvjd7lmrZYc8XtHwp9CxOiARQuiTXyFgAsjzy3BvOKdi6Oqkw4uYoM5bx9Zhquvd
 CfqTrxz9e1zrOlo3uKseyW7BDZTUKqM93uHTKqr+TKAQdIWYJ1GpWrZKrdQzGnvUt1TA+wb8u28/V
 qfs/1IGoaHoVjwdS40H5YXZN03jNyFQ5Ct+IpTy9QHadGXXKZIlrIjyAJVKd/VvXA+Njjonyf3h/h
 mavaFrnmkentZmOxii9RnnHf+WPa18T290G6Rs7XdgCFtfqKtR3EsibJzFKgmY2YydLv7S0chGUn7
 WdsGGqeA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1pEdGM-001l4v-H0; Sun, 08 Jan 2023 21:31:30 +0000
Date: Sun, 8 Jan 2023 21:31:30 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <Y7s2Mo+XR4YJUfoH@casper.infradead.org>
References: <20230108165645.381077-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230108165645.381077-1-hch@lst.de>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jan 08, 2023 at 05:56:38PM +0100, Christoph Hellwig
 wrote: > this series removes the write_one_page API, and it's folioized >
 implementation as folio_write_one. These helpers internally call > [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1pEdGd-00AbZY-Mu
Subject: Re: [Jfs-discussion] remove write_one_page / folio_write_one
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Evgeniy Dushistov <dushistov@mail.ru>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Mark Fasheh <mark@fasheh.com>, Josef Bacik <josef@toxicpanda.com>,
 linux-mm@kvack.org, Chris Mason <clm@fb.com>, ocfs2-devel@oss.oracle.com,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, Jan 08, 2023 at 05:56:38PM +0100, Christoph Hellwig wrote:
> this series removes the write_one_page API, and it's folioized
> implementation as folio_write_one.  These helpers internally call
> ->writepage which we are gradually removing from the kernel.
> 
> For most callers there are better APIs to use, and this cleans them up.
> The big questionmark is jfs, where the metapage abstraction uses the
> pagecache in a bit of an odd way, and which would probably benefit from
> not using the page cache at all like the XFS buffer cache, but given
> that jfs has been in minimum maintaince mode for a long time that might
> not be worth it.  So for now it just moves the implementation of
> write_one_page into jfs instead.

Thanks.  This totally wrecks a patchset I was working on, but it's
definitely the right thing to do, and I'll rebase on top of it once
it's in.  Looking forward to v2 with my niggles fixed ;-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
