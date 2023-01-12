Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BE2666C09
	for <lists+jfs-discussion@lfdr.de>; Thu, 12 Jan 2023 09:03:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pFsY0-0004Ng-6p;
	Thu, 12 Jan 2023 08:02:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1pFsXz-0004Na-9E
 for jfs-discussion@lists.sourceforge.net;
 Thu, 12 Jan 2023 08:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kgyi6pvCQ1/zlyZjICC+Spb4+cAYX3UIcAdB6o3Kepc=; b=jOVeGSM4bkbnGYetMdlHJnK3wF
 kbIBojzl5hSXifGvM6zsXbn9FR1YHWCfMJ0G9oBwBPBNgRm+lRQQMX645Bsb3bmvlwIPU6solZzhm
 F1CgcLtAmEcXXrQrx7kugEyRkCNN0UZkUs6xJfsnahrjv10KaUXExG8R6CnS8Chot4x4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kgyi6pvCQ1/zlyZjICC+Spb4+cAYX3UIcAdB6o3Kepc=; b=huOYpxZto8GVghiWikTWWHFIRv
 gmDGa/vBU2d2iEZQUfmQLBRzNxPYd9Dti06QaVV8jXZj2qJD1KPg2msXXDrE/cS0IphTxiQLxC6F/
 VqYP3liICFOTaXYev1bOYv3ZsD+CzbGIwyPMWWi8WxpK8Toyz30qOJPvJgNtz8Ma9WvE=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pFsXw-0001AS-JJ for jfs-discussion@lists.sourceforge.net;
 Thu, 12 Jan 2023 08:02:50 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2630A68BEB; Thu, 12 Jan 2023 09:02:33 +0100 (CET)
Date: Thu, 12 Jan 2023 09:02:32 +0100
From: Christoph Hellwig <hch@lst.de>
To: David Sterba <dsterba@suse.cz>
Message-ID: <20230112080232.GA12920@lst.de>
References: <20230108165645.381077-1-hch@lst.de>
 <20230109195309.GU11562@twin.jikos.cz> <20230110081653.GA11947@lst.de>
 <20230110130042.GA11562@suse.cz> <20230110153216.GA10159@lst.de>
 <20230111192027.GJ11562@twin.jikos.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230111192027.GJ11562@twin.jikos.cz>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 11, 2023 at 08:20:27PM +0100, David Sterba wrote:
 > Ok then, to make it easier for the folio changes I'll send the two btrfs
 > patches next week. As the rest of the series does not depend [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1pFsXw-0001AS-JJ
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

On Wed, Jan 11, 2023 at 08:20:27PM +0100, David Sterba wrote:
> Ok then, to make it easier for the folio changes I'll send the two btrfs
> patches next week. As the rest of the series does not depend on it,
> I don't see the need to let them all go via the mm tree.

The last patch depends on the btrfs changes as it removes write_one_page
entirely.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
