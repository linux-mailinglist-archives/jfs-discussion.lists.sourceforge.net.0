Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB5826E86A
	for <lists+jfs-discussion@lfdr.de>; Fri, 18 Sep 2020 00:32:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kJ2Rb-0005ZQ-7p; Thu, 17 Sep 2020 22:31:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kJ2Ra-0005ZJ-1X
 for jfs-discussion@lists.sourceforge.net; Thu, 17 Sep 2020 22:31:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NBI0zralRPp5qM9j83BPA0ZseelW+oOID0UWHD+t4og=; b=HPPmj9H24ZfgS7qhhTJVDzCf1g
 xozhDwa2io95VA5vIlKgbxwwasW2xjLmBpSLgo7dQXyyz6jyWarTZ4QbI0szPdmhF8s4IcjFoGhJi
 UfD9YUcJwQKlcZBq1wXxFKQSftz0TqiE+TUb4X+YWkMBnMUJ0A7elEHqdG9BItuSPNjg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NBI0zralRPp5qM9j83BPA0ZseelW+oOID0UWHD+t4og=; b=fEh/EZ3VqR4KVTS3/04AOWo4/f
 1NWXq2L6VIMan5/oz5X0Xn3f5e1a1BOTSsU/P1Z5ZVVBTv81Ersg3Vk1SQIWPA9QOMV9Xi6PvnRzf
 4K/6PhpvX/O7nCmqdkhMP7Ij9cFT34TU7TX36qrrNkuoZ/Ri4Wyns/uYzphcj7Uk+HOU=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJ2RU-00DYNl-Du
 for jfs-discussion@lists.sourceforge.net; Thu, 17 Sep 2020 22:31:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=NBI0zralRPp5qM9j83BPA0ZseelW+oOID0UWHD+t4og=; b=KzsKzrQOFiNYuo7747mdvgEu+h
 /y6vK+gWvWW+Ft7JHbX6oHBluLZgw5hQerH8P9qpE/Y0pWNBozHaMRsaYKOw0TJ67J3Zh1sME4d4p
 5/WRc93gotekRCP0pM46FHb02uGNiRx0Y9tkqc5ZeWOxA9yw+PZCodQKjLNOKaHE77RMqHrdlr+uz
 ynmSPRuONtTmTjJyr/29IinJFAPemOrmyQcrxlr2aqSd7jacEC3lEnE3RxYzyKjOAKsci9D5rmyL8
 orTRI92pnQbCYFIWEAhtJoJ74RanEG2V+9wwfLvL1YxG/RmNxRGeQwb+oNeqPYCF2TDIoFZVeeIdp
 /eixEdeg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kJ27X-00048x-M7; Thu, 17 Sep 2020 22:11:15 +0000
Date: Thu, 17 Sep 2020 23:11:15 +0100
From: Matthew Wilcox <willy@infradead.org>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Message-ID: <20200917221115.GY5449@casper.infradead.org>
References: <20200910234707.5504-1-willy@infradead.org>
 <20200910234707.5504-10-willy@infradead.org>
 <20200917220500.GR7955@magnolia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917220500.GR7955@magnolia>
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
X-Headers-End: 1kJ2RU-00DYNl-Du
Subject: Re: [Jfs-discussion] [PATCH v2 9/9] iomap: Change calling
 convention for zeroing
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
 linux-nvdimm@lists.01.org, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Sep 17, 2020 at 03:05:00PM -0700, Darrick J. Wong wrote:
> > -static loff_t
> > -iomap_zero_range_actor(struct inode *inode, loff_t pos, loff_t count,
> > -		void *data, struct iomap *iomap, struct iomap *srcmap)
> > +static loff_t iomap_zero_range_actor(struct inode *inode, loff_t pos,
> > +		loff_t length, void *data, struct iomap *iomap,
> 
> Any reason not to change @length and the return value to s64?

Because it's an actor, passed to iomap_apply, so its types have to match.
I can change that, but it'll be a separate patch series.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
