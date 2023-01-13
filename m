Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 547DF668BA2
	for <lists+jfs-discussion@lfdr.de>; Fri, 13 Jan 2023 06:42:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pGCpX-0000zJ-Uh;
	Fri, 13 Jan 2023 05:42:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+429392e802db0772f8f4+7082+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1pGCpW-0000zD-Pn for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Jan 2023 05:42:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z5SFGnAK1U04ZK1706GHRqYQOYnTl0hLVwN6OVNhlyo=; b=UqvH5xPgkYDRd3lPO2U2iUV6pw
 DJ6gCOxVv5CMVQ6rUdry5nDNEtYVu27iXQ0esDWmFKz2bHmVmHLHLHvzstrurRLdDaFIakF79SUEs
 O/zRtAqhAVCU4JzOgCb4CmqGLqtSMP1MDyC2DIqZnatvavf75Dcb3CUejkknGAtGbCpU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=z5SFGnAK1U04ZK1706GHRqYQOYnTl0hLVwN6OVNhlyo=; b=J
 dn+AZDKg3nuf6x5+M8pfuEnaVFIaEKCXo7xeBIk1LR1haIPP47Z59fh0/yJe8EUx6S6nOgxO3lsUA
 7qLaCuhFkeWzTCjjm/N+uxSDh0N92kqB5ZMFyKougFOa2HeBqxzYpDOyLCPPaGgKCm2S87esRYPVx
 1Udm2f4rYp33cKDo=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pGCpS-0005nu-4a for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Jan 2023 05:42:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=z5SFGnAK1U04ZK1706GHRqYQOYnTl0hLVwN6OVNhlyo=; b=GZVI5BTcjhDYQev/12ZXt+nCfF
 09ycBcmRjsuy3LAhO3kMDBN/DvWDbtKnVRN4y44iQadvVMtlZgdMXuEfv7CjCh8wg7AVYDa1NmKNa
 QVpHu1dkhXmRRCISTQOesx5mZXwXF3HPnKanx2r6uNvNc75h3rS7AAiBhiai5h7atcUXbCHdr+jp4
 HyXR7OA7PGl6ONMmri736yLWq3XY3njyQ2pv37gtwV8B4I4LOx4V4k4rhBVlIC6JqCFmrBeA3RCv0
 UbpOw9Bda6MkTGHMlJ74+3WrcDWeJTMhMl49jeD+KLFKkPxy88LLSaqAECri8fABegu6TVeGB9sSN
 ALb0LUgw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1pGCpH-000YZW-KI; Fri, 13 Jan 2023 05:42:03 +0000
Date: Thu, 12 Jan 2023 21:42:03 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Message-ID: <Y8DvK281ii6yPRcW@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all, A while ago we've deprecated reiserfs and scheduled
 it for removal. Looking into the hairy metapage code in JFS I wonder if we
 should do the same. While JFS isn't anywhere as complicated as reiserfs,
 [...] Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1pGCpS-0005nu-4a
Subject: [Jfs-discussion] Should we orphan JFS?
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
Cc: linux-fsdevel@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi all,

A while ago we've deprecated reiserfs and scheduled it for removal.
Looking into the hairy metapage code in JFS I wonder if we should do
the same.  While JFS isn't anywhere as complicated as reiserfs, it's
also way less used and never made it to be the default file system
in any major distribution.  It's also looking pretty horrible in
xfstests, and with all the ongoing folio work and hopeful eventual
phaseout of buffer head based I/O path it's going to be a bit of a drag.
(Which also can be said for many other file system, most of them being
a bit simpler, though).


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
