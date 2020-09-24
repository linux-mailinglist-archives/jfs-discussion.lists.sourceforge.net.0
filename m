Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4455F2765AB
	for <lists+jfs-discussion@lfdr.de>; Thu, 24 Sep 2020 03:08:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kLFjs-0003yO-Nk; Thu, 24 Sep 2020 01:08:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kLFjq-0003yA-8c
 for jfs-discussion@lists.sourceforge.net; Thu, 24 Sep 2020 01:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CpRt9L3oSpo9XB/wJ4tlJ8BLy+Ga6XgFjsS66dr9R/g=; b=PT0XUryjkNupf2xmqsm5PuqCht
 GRgs3mB6+gl9V+7zbBta1UcY5kx+H9++SgFaLvn8e1tqP0tx+CJJIj6OX1Vt0kZ7AwN8aUSXf3+A9
 Kc4OIRjYEM1iOmMFwDVI+izXAZs2Ox0X53Ky0AUwucgejI9cYBj1ZziBlrsRYSbd2m00=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CpRt9L3oSpo9XB/wJ4tlJ8BLy+Ga6XgFjsS66dr9R/g=; b=OfEMyvktnDKndC9eAtuaEKPk39
 MFLAiFjkBexFzU/B+/Xj6iehGJJD2W1WL1Iu8a34j5yM+7ApScCt7kosT/9HkhCw7N32iII7BfrL1
 o2UEiJyMHinuuQQ16hMoAOuFnQe/RXuPujvfbHOFHNnQXB6DIndsNjw80ljhn5OEJKzI=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kLFje-005Lfm-TA
 for jfs-discussion@lists.sourceforge.net; Thu, 24 Sep 2020 01:07:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=CpRt9L3oSpo9XB/wJ4tlJ8BLy+Ga6XgFjsS66dr9R/g=; b=wC6+TkHqrGD3haqlkJx8wiylpt
 OieNI52BAZTw2567ZzFYTGBthskGEQQUw+uqPH+4AqIqB6vJ79XAuZhXWhZeCTeeAKqgMTM8XSn85
 HYyTGODlwKP8hCgVqZgicVfUJ3VkLIFimHr1Dih+ycnp3HzkwcxJWqhw/vxFrmc+9rlDcfz5rnvgW
 5W7vt7CczMfqoovNsSSXln0UzWYqaitlwBC/WvhjD1QJZ93mMwQwzs1tS0KO5u5VHqTxw3bbIKo7h
 PQ57lVkX8p4vRfaHvUjf9seoE7o6023/TX0nSweYVUHOiA+PA3WB9xLdwEZhT92DgVKGKR2xKE9kZ
 y0oraI7Q==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kLFjN-0000zh-0A; Thu, 24 Sep 2020 01:07:29 +0000
Date: Thu, 24 Sep 2020 02:07:28 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Qian Cai <cai@redhat.com>
Message-ID: <20200924010728.GS32101@casper.infradead.org>
References: <20200910234707.5504-1-willy@infradead.org>
 <20200910234707.5504-6-willy@infradead.org>
 <163f852ba12fd9de5dec7c4a2d6b6c7cdb379ebc.camel@redhat.com>
 <20200922170526.GK32101@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922170526.GK32101@casper.infradead.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kLFje-005Lfm-TA
Subject: Re: [Jfs-discussion] [PATCH v2 5/9] iomap: Support arbitrarily many
 blocks per page
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
Cc: Christoph Hellwig <hch@infradead.org>, jfs-discussion@lists.sourceforge.net,
 linux-nvdimm@lists.01.org, Dave Kleikamp <shaggy@kernel.org>,
 "Darrick J . Wong" <darrick.wong@oracle.com>, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, linux-next@vger.kernel.org,
 Dave Chinner <dchinner@redhat.com>, linux-fsdevel@vger.kernel.org,
 Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Sep 22, 2020 at 06:05:26PM +0100, Matthew Wilcox wrote:
> On Tue, Sep 22, 2020 at 12:23:45PM -0400, Qian Cai wrote:
> > On Fri, 2020-09-11 at 00:47 +0100, Matthew Wilcox (Oracle) wrote:
> > > Size the uptodate array dynamically to support larger pages in the
> > > page cache.  With a 64kB page, we're only saving 8 bytes per page today,
> > > but with a 2MB maximum page size, we'd have to allocate more than 4kB
> > > per page.  Add a few debugging assertions.
> > > 
> > > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> > > Reviewed-by: Dave Chinner <dchinner@redhat.com>
> > 
> > Some syscall fuzzing will trigger this on powerpc:
> > 
> > .config: https://gitlab.com/cailca/linux-mm/-/blob/master/powerpc.config
> > 
> > [ 8805.895344][T445431] WARNING: CPU: 61 PID: 445431 at fs/iomap/buffered-io.c:78 iomap_page_release+0x250/0x270
> 
> Well, I'm glad it triggered.  That warning is:
>         WARN_ON_ONCE(bitmap_full(iop->uptodate, nr_blocks) !=
>                         PageUptodate(page));
> so there was definitely a problem of some kind.

OK, I'm pretty sure the problem predated this commit, and it's simply
that I added a warning (looking for something else) that caught this.

I have a tree completly gunked up with debugging code now to try to
understand the problem better, but my guess is that if you put this
warning into a previous version, you'd see the same problem occurring
(and it is a real problem, because we skip writeback of parts of the
page which are !uptodate).


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
