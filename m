Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A1FBD7595
	for <lists+jfs-discussion@lfdr.de>; Tue, 14 Oct 2025 07:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xv1XsGbJ5L7OPsD2zkYofQFD1eWKLpBFx+1dbeURiD4=; b=gDRqmI2A5yHYkaSYZlpka1MTby
	V2+76V2roy0kXgTZNFdrR196Ewe0MAAK89wcCMOGmlkHprmRD5Z76UYjheEEW0VaTViOl0uWMKZmC
	LEeF0MJDRtc9U2ub1x1j3v3gjtB3ASPusTPn7b0iEDCGpwGQftFH3w0qzS5JFmhRMO8U=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8X8g-0006Zz-VZ;
	Tue, 14 Oct 2025 04:59:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1v8X8f-0006Zg-2H
 for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 04:59:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IYNi7v4oqUnqFZQMbrx9Av9oqoG2jtUSAlAjctVk0VI=; b=bExxemZNexkj58Ih5R3oTnOn7E
 E9vRNKDsxOG4sNcr5I5fDOutdDhZmzI+mT6NeTbi2+QQL+WPxvZq+n3WUPEmsk+l+hs9dIK25XOx5
 YfmZXbZyzGiLD2HVofdalJcGzpgNNljm6LRy/nac/FPCwXozRDadubMn+PaPDYqJlgPg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IYNi7v4oqUnqFZQMbrx9Av9oqoG2jtUSAlAjctVk0VI=; b=MiDCsOX/pyDf4gcFInHrbppymd
 GwguN3rHE1MW+qu09fb2dSsPD0BON3GRat9wxKILcHn2ih7AitUgGlw3wed+1afv2BQOqCCGzoiB5
 OhTlD8yEc2aodXixbQ1yQn1+4mqqwQBSXV2lqDKtJSZRMcdA+Ok/btHUXIIAiZFe0WwI=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8X8f-00056F-Cl for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 04:59:57 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 1B7E3227AA8; Tue, 14 Oct 2025 06:52:36 +0200 (CEST)
Date: Tue, 14 Oct 2025 06:52:36 +0200
To: Damien Le Moal <dlemoal@kernel.org>
Message-ID: <20251014045236.GC30978@lst.de>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-8-hch@lst.de>
 <4e508d42-9cd4-481a-904f-535b1de0b765@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e508d42-9cd4-481a-904f-535b1de0b765@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 13, 2025 at 05:02:50PM +0900,
 Damien Le Moal wrote:
 > > int filemap_fdatawrite(struct address_space *mapping) > > { > > - return
 __filemap_fdatawrite(mapping, WB_SYNC_ALL); > > + return fi [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1v8X8f-00056F-Cl
Subject: Re: [Jfs-discussion] [PATCH 07/10] mm: remove __filemap_fdatawrite
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
From: Christoph Hellwig via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christoph Hellwig <hch@lst.de>
Cc: Latchesar Ionkov <lucho@ionkov.net>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-mm@kvack.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Christoph Hellwig <hch@lst.de>,
 Mark Fasheh <mark@fasheh.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Joel Becker <jlbec@evilplan.org>,
 David Sterba <dsterba@suse.com>, Eric Van Hensbergen <ericvh@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 v9fs@lists.linux.dev, linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Oct 13, 2025 at 05:02:50PM +0900, Damien Le Moal wrote:
> >  int filemap_fdatawrite(struct address_space *mapping)
> >  {
> > -	return __filemap_fdatawrite(mapping, WB_SYNC_ALL);
> > +	return filemap_fdatawrite_range(mapping, 0, LONG_MAX);
> 
> This should be LLONG_MAX, no ?

Yes, fixed.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
