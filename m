Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 387D0663ABB
	for <lists+jfs-discussion@lfdr.de>; Tue, 10 Jan 2023 09:17:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pF9on-0005LU-0V;
	Tue, 10 Jan 2023 08:17:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1pF9ok-0005LO-Jm
 for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Jan 2023 08:17:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hldyYBUkXOqPgXE0USWmRqQN/UQkoWAKQz51ZPiUSTU=; b=iiina1kQBxrlZggn7Lc4CtzBIU
 zHpV8RC8ZBjZ0ooD9fRW6e+wfY0kOtOdNmDfRcvDisakKWhbQ7/usOlrH6DVvBnQIpT/jL4SmUuoY
 fg8CDlS2ZPLhcM8aPdktctyDuN2SeT83L3iRViEkCRqgTCkEX/C+xKtM85rYYRm9KWSo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hldyYBUkXOqPgXE0USWmRqQN/UQkoWAKQz51ZPiUSTU=; b=LjyEk7+F0vDeues/LXXAElHtwd
 GgN/q8IvOor81/4XDur/7EXraFPAhWG8mz2pJUyxlgRNGf5qwOzRf4yGqAJ8EblKsQcw762YH9jC3
 gwr7KKTmLw/dGpjIP48my836cqP4wW3fgptwqdV5eWgNEW5An8apIWSb7hKYlhC0iqJE=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pF9of-0006zT-Ui for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Jan 2023 08:17:10 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 11F8668AFE; Tue, 10 Jan 2023 09:16:54 +0100 (CET)
Date: Tue, 10 Jan 2023 09:16:53 +0100
From: Christoph Hellwig <hch@lst.de>
To: David Sterba <dsterba@suse.cz>
Message-ID: <20230110081653.GA11947@lst.de>
References: <20230108165645.381077-1-hch@lst.de>
 <20230109195309.GU11562@twin.jikos.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230109195309.GU11562@twin.jikos.cz>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 09, 2023 at 08:53:09PM +0100, David Sterba wrote:
 > The btrfs patches were sent separately some time ago,
 now merged to > misc-next
 with updated changelogs and with the suggested switch to [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1pF9of-0006zT-Ui
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
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 Chris Mason <clm@fb.com>, ocfs2-devel@oss.oracle.com,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christoph Hellwig <hch@lst.de>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Jan 09, 2023 at 08:53:09PM +0100, David Sterba wrote:
> The btrfs patches were sent separately some time ago, now merged to
> misc-next with updated changelogs and with the suggested switch to folio
> API in the 2nd patch.

Yes, 7 weeks ago to be exact.  I wish we could just feed everything
together now that we've missed the previous merge window, as that
makes patch juggling for Andrew and Matthew a lot simpler.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
