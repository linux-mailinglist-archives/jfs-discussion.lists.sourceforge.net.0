Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9705A663AF1
	for <lists+jfs-discussion@lfdr.de>; Tue, 10 Jan 2023 09:25:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pF9wG-0005tQ-T4;
	Tue, 10 Jan 2023 08:24:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1pF9w5-0005t9-CJ
 for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Jan 2023 08:24:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LuMYbQ+c/eNEEG6OnFpz8MeGm4gJCpDK1EeG/X8I5VM=; b=FLXDMGaQ0s05HViXRlwdDL9ETJ
 iTwF6KY8yUfntdIdUTw6htCQdyhonpoOfdnGoX6z7/en+C5UiDCLAdMcvppyALf3i0ab5+uzWNECl
 HiyXNFbAZdOPi2KUy4RB8XiCtVNaQ89sjquQlsLHdCHdYHOxOKb5WRSQtevUK1M9FNLQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LuMYbQ+c/eNEEG6OnFpz8MeGm4gJCpDK1EeG/X8I5VM=; b=lcTBY0FDQ5mbJgrqKg5MSmlqJ9
 L3xynkgmwjL+q8YPBjk7hnlvd8XM+76IlvrE/dSYX6vGNbQNmJAxLEOZJUddPUhesvpnCYgOZ+2Hl
 xd2oDGAgjyu3a5Sx3b+4qY0pjFxqpIs3OsB3W4XaTqWaNLq8JXZh1q7UxNONteQfjj3Q=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pF9w1-0007JI-6W for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Jan 2023 08:24:41 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4A99F68AFE; Tue, 10 Jan 2023 09:24:29 +0100 (CET)
Date: Tue, 10 Jan 2023 09:24:28 +0100
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20230110082428.GC11947@lst.de>
References: <20230108165645.381077-1-hch@lst.de>
 <20230108165645.381077-5-hch@lst.de> <Y7szWmUKSwcxsaMu@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7szWmUKSwcxsaMu@casper.infradead.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jan 08, 2023 at 09:19:22PM +0000,
 Matthew Wilcox wrote:
 > On Sun, Jan 08, 2023 at 05:56:42PM +0100, Christoph Hellwig wrote: > >
 We do not need to writeout modified directory blocks immediatel [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1pF9w1-0007JI-6W
Subject: Re: [Jfs-discussion] [PATCH 4/7] sysv: don't flush page immediately
 for DIRSYNC directories
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
 Christoph Hellwig <hch@lst.de>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, Jan 08, 2023 at 09:19:22PM +0000, Matthew Wilcox wrote:
> On Sun, Jan 08, 2023 at 05:56:42PM +0100, Christoph Hellwig wrote:
> > We do not need to writeout modified directory blocks immediately when
> > modifying them while the page is locked. It is enough to do the flush
> > somewhat later which has the added benefit that inode times can be
> > flushed as well. It also allows us to stop depending on
> > write_one_page() function.
> 
> Similar concerns to the minix patch here ... missing assignments to
> 'err'.

Fixed.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
