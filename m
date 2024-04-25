Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F6C8B271E
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Apr 2024 19:05:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s02Wm-00081p-UJ;
	Thu, 25 Apr 2024 17:04:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1s02Wl-00081X-5T
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 17:04:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZC3pg5ImZ5cpQcMeqKjqfQ5Go+U+qRekmVjKTp+jCBA=; b=N198NMJLelF3SR2SNnEhOsvCux
 6oq7EmfW75dqEvuCJhGv58a4jSuY5whM5YfS1BT6h+aAVD8+7DNk/VYHRjLSaeEuDxxP1/ckvPi9g
 jZQHbScjtJyCgozk6lp1tt8Cx0zS3Jglq8TkgZZgU6u9jvkFl4OJ8+nRxJ3AfUnyTPkM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZC3pg5ImZ5cpQcMeqKjqfQ5Go+U+qRekmVjKTp+jCBA=; b=aMX4jLYi7gxMkv001vQE1EJwJ7
 8tUp/Kkhgzr7r0GOCvuhqGCeIYLpw8nAgqqo7FskkbnqfgDq4W4LL5cL3ISn8GoYs2gQFmEcT3w3G
 0nDTsY2ApiNJdrxLxOm5Qj8E78VSr4Wj8dIf51JuR0pBsPaOXlwHbUcJlXfLR2TWpjQk=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s02Wk-0005ic-Li for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 17:04:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ZC3pg5ImZ5cpQcMeqKjqfQ5Go+U+qRekmVjKTp+jCBA=; b=uBf7vaINTqulMQSoR6jlevtP6X
 t0HEUh+4AuUZ+92586alWwxA8tRgGJ2r6xSv+hQr2zHPA627RNj9nOfQ3uMWHU8uDzB2AfcaMXa1m
 CiQuKncJo60jXO/7ScXBcZiX0sHLPaXIVDpY2QRjt+mnd4TopPNq9H6yBtUeyNexWX3sZ8uUHHpEI
 tim9gLbvjUbdk8IQKxxTl33x2qKno+oUXYu7J/PHEf0j+KujYGslbW1ryTFHN1i2ui6PZjqCXfBfy
 oiP/DFQ8LKwWrFMRFJfLoJAQa/maidtdv4hbK2OqSHbE1iqYzgcM6F+LWjaYVSObBv74B1o/9grs7
 tZdCOogw==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1s02We-00000003R0o-0mco;
 Thu, 25 Apr 2024 17:04:48 +0000
Date: Thu, 25 Apr 2024 18:04:48 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Jeongjun Park <aha310510@gmail.com>
Message-ID: <ZiqNMLWFIvf43Mr-@casper.infradead.org>
References: <Zipl4PQ9Q7sBlMCt@casper.infradead.org>
 <20240425142434.47481-1-aha310510@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240425142434.47481-1-aha310510@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 25, 2024 at 11:24:34PM +0900,
 Jeongjun Park wrote:
 > Matthew Wilcox wrote: > > It should be checked earlier than this. There's
 this code in > > dbMount(). Why isn't this catching it? > > T [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1s02Wk-0005ic-Li
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix array-index-out-of-bounds in
 diFree
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
Cc: shaggy@kernel.org, brauner@kernel.org, syzkaller-bugs@googlegroups.com,
 jlayton@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Apr 25, 2024 at 11:24:34PM +0900, Jeongjun Park wrote:
> Matthew Wilcox wrote:
> > It should be checked earlier than this.  There's this code in
> > dbMount().  Why isn't this catching it?
> 
> This vulnerability occurs because a very large value can be passed 
> to iagp->agstart. So that code doesn't prevent the vulnerability.

In your earlier mail, you said the large value was found in db_agl2size.
If the problem is in agstart then diRead() is the right place to check it.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
