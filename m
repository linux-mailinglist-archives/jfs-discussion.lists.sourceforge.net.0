Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A71B26A912
	for <lists+jfs-discussion@lfdr.de>; Tue, 15 Sep 2020 17:50:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kIDDp-0005SQ-PU; Tue, 15 Sep 2020 15:50:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kIDDj-0005S0-8T
 for jfs-discussion@lists.sourceforge.net; Tue, 15 Sep 2020 15:50:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9hpqrM0yq5Ww64iJO3HcA4+NwEdTQm35KV/P4mwZVJ8=; b=SMNal0SnPSqb3qseb0Nx+e0uR5
 tid6kM614wk+rW6mVNp8BiRYcDHO5/ZAr0rNRN3YC3Dt6pdkl8/sBkFvxcQ8zlqMX55wbJpJuvSUG
 KH8Ly2zFl99qFfCy/R3u6w4OP1EG2xkkkgNmzUWIAdwc3I73jDGhMrkBFmZl+rjZFHs0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9hpqrM0yq5Ww64iJO3HcA4+NwEdTQm35KV/P4mwZVJ8=; b=J5iQ33j+M8LxtSos+VDy5v8zBr
 k6mxh8ROyzMkPbspRfnGUIr5VqXsfNV6xxF+OHahYMpCg6SEFKH89YDkEZs/upBNriPifh8iJnKpo
 zaayspOLCve7/PXvF7+9NkN9r/iogiNPnq4rdlJVjcN8vz3acJbeM7apbwYsMUdVaDQE=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIDDc-00A7yn-S8
 for jfs-discussion@lists.sourceforge.net; Tue, 15 Sep 2020 15:50:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=9hpqrM0yq5Ww64iJO3HcA4+NwEdTQm35KV/P4mwZVJ8=; b=Ld8EqgoTHdhtpXDolfkH6H8955
 WruBG1aYD6Yzgd0KGMn5LG/XdiTjqpJayTXIZJPGsHoO2OlPUygq7PKR6gJflJxy6AAhgs+gwnrD4
 gwA4p82nbFgJxHk51dAZBJ3pomaao852oedeL5oJlv/N8ObKdMjc2T3MOu7eyjYQdjWU0Yrnkx9qB
 CGP7Kj91TJbLimXQ0puCBDNC0OxZGlIVJEvC9EFoIfiMMjlFX7gMOjBw+lO5Y20877/EWw4k2hgG6
 Asf3XkrMLaNfUI7U8J0+RAyqsP2J62ZETQcXEChi6hharp4fYKPNuqrKvVqCItl38spq9NmXSuOV1
 H2ZJ6fRw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kIDDB-0002uB-5c; Tue, 15 Sep 2020 15:49:41 +0000
Date: Tue, 15 Sep 2020 16:49:41 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Laight <David.Laight@aculab.com>
Message-ID: <20200915154941.GJ5449@casper.infradead.org>
References: <20200910234707.5504-1-willy@infradead.org>
 <20200910234707.5504-3-willy@infradead.org>
 <0c874f14499c4d819f3e8e09f5086d77@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0c874f14499c4d819f3e8e09f5086d77@AcuMS.aculab.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kIDDc-00A7yn-S8
Subject: Re: [Jfs-discussion] [PATCH v2 2/9] fs: Introduce i_blocks_per_page
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
Cc: Christoph Hellwig <hch@infradead.org>,
 "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 "linux-nvdimm@lists.01.org" <linux-nvdimm@lists.01.org>,
 Dave Kleikamp <shaggy@kernel.org>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-xfs@vger.kernel.org" <linux-xfs@vger.kernel.org>,
 Dave Chinner <dchinner@redhat.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Sep 15, 2020 at 03:40:52PM +0000, David Laight wrote:
> > @@ -147,7 +147,7 @@ iomap_iop_set_range_uptodate(struct page *page, unsigned off, unsigned len)
> >  	unsigned int i;
> > 
> >  	spin_lock_irqsave(&iop->uptodate_lock, flags);
> > -	for (i = 0; i < PAGE_SIZE / i_blocksize(inode); i++) {
> > +	for (i = 0; i < i_blocks_per_page(inode, page); i++) {
> 
> You probably don't want to call the helper every time
> around the loop.

This is a classic example of focusing on the details and missing the
larger picture.  We don't want the loop at all, and if you'd kept reading
the patch series, you'd see it disappear later.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
