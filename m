Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61365550BE9
	for <lists+jfs-discussion@lfdr.de>; Sun, 19 Jun 2022 17:47:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1o2x8M-0001R2-Ip; Sun, 19 Jun 2022 15:46:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1o2x8K-0001Qv-Gf
 for jfs-discussion@lists.sourceforge.net; Sun, 19 Jun 2022 15:46:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MxPhQC0Fi/1DMOZlvyotEXGMygrfYcYmw9BH/R1+BPA=; b=FZfBsCCoWr12N6SBQjE3zXCkvH
 QMEKzXJp+tBIWSEuixbb/wjVw0S/XMzvCOE7zRqKvx1mWrdeK4h199DJttYdTHc/mHEOg7cYDUzns
 oRZ7HADtHtChwdxSHlZbGC6dmC7fMCOO1NzhLgLjooOLQWgUvBmkQgncJSeJIpqGll30=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MxPhQC0Fi/1DMOZlvyotEXGMygrfYcYmw9BH/R1+BPA=; b=dp8LHN5L0R0xh6lg8Sz2KO7suY
 2yp2F+3GLg489/b6XG05WkcOeqJa5gg6cDe0suOt/fj+yEs062cELLRAtjj2U8q0yCyuAQc85Dj++
 VdEFetSS745CwhbJ3udhXyOPRhw6gGM7q/ecGkiwLQqcOdujdtSB1qBYktxq8etYit0U=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o2x8H-007RNB-7U
 for jfs-discussion@lists.sourceforge.net; Sun, 19 Jun 2022 15:46:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MxPhQC0Fi/1DMOZlvyotEXGMygrfYcYmw9BH/R1+BPA=; b=QxUVrca29bq4c4uLb+7FFVLG2P
 Wmb/5slT/qsVwGVkMPjkMDNMBEuUHLJWSjs5RmO+hqGaA7EIBqCDB6SEuHb2JEExze92T9tDpajFP
 N5NTd9C0ZN3PMXSUtOC4c6RnqZ2538DT+n+Q3egZDdZEJqQmQpaAyDjnqpZKVZy71Gy87pc3x3Ksi
 LsXw1WvDfjTKhr9e9mILVsy2C6LT7Wg54NqRURIhsU4nz9G4gWG2Iv8AcVocwPPabuxciOTaWSYEa
 coHrqTqoEeEJ6/yOAiayxV8QFPzMaMe5G8TyuCfLO9Xsn+MirVbHJfuUBARLa+C+HMSszkQd13xDS
 1XKZW8sw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1o2x7u-004S1a-9R; Sun, 19 Jun 2022 15:46:14 +0000
Date: Sun, 19 Jun 2022 16:46:14 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <Yq9ExtTRAx1fqORt@casper.infradead.org>
References: <20220613053715.2394147-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220613053715.2394147-1-hch@lst.de>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 13, 2022 at 07:37:09AM +0200, Christoph Hellwig
 wrote: > this series (against the pagecache for-next branch) removes the
 nobh > helpers which are a variant of the "normal" buffer head help [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1o2x8H-007RNB-7U
Subject: Re: [Jfs-discussion] remove the nobh helpers v2
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
 ntfs3@lists.linux.dev, linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Jun 13, 2022 at 07:37:09AM +0200, Christoph Hellwig wrote:
> this series (against the pagecache for-next branch) removes the nobh
> helpers which are a variant of the "normal" buffer head helpers with
> special tradeoffs for machines with a lot of highmem, and thus rather
> obsolete.  They pass xfstests, or in case of jfs at least get as far
> as the baseline.

Thanks, applied & pushed out to the for-next branch.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
