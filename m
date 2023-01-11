Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7226652D0
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Jan 2023 05:27:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pFShW-00060l-Ay;
	Wed, 11 Jan 2023 04:26:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1pFShT-00060e-Um
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Jan 2023 04:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1CoD0yqJ0q7gLouXffZ6iJW190LiYTx9N0HBrnV17Vg=; b=N8IptzHxKGBlF8wRmKba6ddGMs
 sqr/7W8hs0unKQt1KcIY2lYZR7Mxn+BhC4r91L80oo2zeRSc8nFwANIHzi+PS6tjAKbEMWA38QzVf
 G6FQn7W5jiiD1Qheb2Qs4ie2cXjs/ai6Ejc4ZD5ZoxuTxFT01dV5Wd4zmdpT/y17WnK0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1CoD0yqJ0q7gLouXffZ6iJW190LiYTx9N0HBrnV17Vg=; b=LVQQwsZ0blAuUKbv4+xwSW525R
 FYXZSvPEywabTyHXXJRRzKvyY80qH7aRcrHgVnE5g6OXwNazYtW84ZfT92es0UzyoRm3JmMUkHQTD
 zCm9aHMCIOBFwkBBHgg8csID4FsQcjeosLnK48onOZun1xO8NvezHMjFYaP5hG18SW74=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pFShP-00047b-9X for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Jan 2023 04:26:55 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 13E4B68BEB; Wed, 11 Jan 2023 05:26:42 +0100 (CET)
Date: Wed, 11 Jan 2023 05:26:41 +0100
From: Christoph Hellwig <hch@lst.de>
To: Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <20230111042641.GA15181@lst.de>
References: <20230108165645.381077-1-hch@lst.de>
 <20230108165645.381077-4-hch@lst.de> <Y7sy5jzjT7tpPX6Z@casper.infradead.org>
 <20230110082225.GB11947@lst.de> <Y74c+WSEajAic3Kh@ZenIV>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y74c+WSEajAic3Kh@ZenIV>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 11, 2023 at 02:20:41AM +0000, Al Viro wrote: >
 More seriously, all those ..._set_link() need to return an error and their
 > callers (..._rename()) need to deal with failures. That's actually what
 I did yesterday: 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1pFShP-00047b-9X
Subject: Re: [Jfs-discussion] [PATCH 3/7] minix: don't flush page
 immediately for DIRSYNC directories
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
 Matthew Wilcox <willy@infradead.org>, linux-mm@kvack.org,
 Chris Mason <clm@fb.com>, ocfs2-devel@oss.oracle.com,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christoph Hellwig <hch@lst.de>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Jan 11, 2023 at 02:20:41AM +0000, Al Viro wrote:
> More seriously, all those ..._set_link() need to return an error and their
> callers (..._rename()) need to deal with failures.

That's actually what I did yesterday:

http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/remove-write_one_page


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
