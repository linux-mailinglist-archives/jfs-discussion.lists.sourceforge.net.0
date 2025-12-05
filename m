Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60460CA824B
	for <lists+jfs-discussion@lfdr.de>; Fri, 05 Dec 2025 16:15:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:Date:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Y4ENnh7bQKqupyOPgrAVZr52Ekj8Sim4Sdzt5H1Ha3E=; b=XPc92+Bk1IteKkpaEpAPQJhDfn
	kxR4NOd8gJOHOUVjLs7Sflg2VE3aG00M0lzaB/WaGn5Ywx4wFEsUTNwKYNzv3LMy5Nv8GV13GDFTK
	gjWl+Jszg2bUC/pcZjZnkYHCWzHKJFWGx9sTUtlHDSk7/q5GQux5gMvXAzX/M5g2kKLs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vRXWi-0003oF-Nv;
	Fri, 05 Dec 2025 15:15:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1vRNXQ-0004TC-98;
 Fri, 05 Dec 2025 04:35:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gK01jioExk9QgqqKJWuj0nW12vKsCLoPguQ+woKkLDE=; b=V6xCeKo0KV/oy1FGTBM/KpPsxs
 zobiBvEq7o7rRSoKgn3vVTJMaHE9+fmFNbdPqME1F6Ci7Mgx+uFOgjBU5PSh7AMS3xdH0tcvLWse0
 K5IUpQXXvyoQ+uywKrfoCUta+M9CtKzPl/x+0ILBMJcdVnHa7JaExzTUo6uodsNgjmeg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gK01jioExk9QgqqKJWuj0nW12vKsCLoPguQ+woKkLDE=; b=P
 hLAjreexrZMyjWeeVF0ycuTrydPoIjCLeQGCu09CXZddYjOtu2emFXXgZWVM0l7NgqbMLL97kgHvj
 sT7zSJ3TD0zjSYLI96P21MQpiwM2d/DxQ3a64cikEy8sg/Q/P7dOLS2uv0GZ/ybM7EW374ymndt2C
 b0/TvHt4XUcgAWOQ=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vRNXP-0005Ca-M1; Fri, 05 Dec 2025 04:35:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=gK01jioExk9QgqqKJWuj0nW12vKsCLoPguQ+woKkLDE=; b=YhV6zJf9UwxxQfXPraH5u8Zr0A
 EUtovP42SQHEcoP4rCDrTQezaxtICdjr5GB67zDW09lfUnzCwlSHonY82uU8gauwMyL9rgEYR2nPI
 PuFgp3jL5EsEms8rDPNmLrHAvUaPlu5zMLtf/HtlkvQBF8CMNEJ65isd5j39Tu7y2NRRRdpk8wgcN
 iQfMl4TDDdzzQlz9lnYQTWDPUPiHh0YzCecUv6jMrf6KxAww71ec6+NyO5RRZBrnBNjZsp3qIi93l
 N/pB2x+KGPO2uY3YAZhUWDGiV79M2qPCHgfzKXsuFNMsQE9JcC27gOIJFRTjElLgkRzcHqGboYHGr
 rc6p0MQQ==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1vRNX5-00000005A2T-0Xng;
 Fri, 05 Dec 2025 04:35:03 +0000
Date: Fri, 5 Dec 2025 04:35:02 +0000
To: linux-fsdevel@vger.kernel.org
Message-ID: <aTJg9vOijOGVTnVt@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This is a heads-up that CONFIG_READ_ONLY_THP_FOR_FS is going
 to be removed during the next merge window. When it was merged in 2019, it
 was always intended as a temporary step towards the more general [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vRNXP-0005Ca-M1
X-Mailman-Approved-At: Fri, 05 Dec 2025 15:15:19 +0000
Subject: [Jfs-discussion] Removal of CONFIG_READ_ONLY_THP_FOR_FS
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
From: Matthew Wilcox via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Matthew Wilcox <willy@infradead.org>
Cc: linux-mm@kvack.org, Song Liu <songliubraving@fb.com>,
 Zi Yan <ziy@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

This is a heads-up that CONFIG_READ_ONLY_THP_FOR_FS is going to be removed
during the next merge window.  When it was merged in 2019, it was always
intended as a temporary step towards the more general solution which ended
up being merged as large folios.  It has been a good feature which helped
a lot, both as a way to develop other code which was eeded for large
folios and it provided an immediate solution for improved performance.

Now the majority of filesystems where performance is relevant have been
converted to support large folios (afs, btrfs, erofs, ext4, nfs, smb,
tmpfs, xfs, zonefs) with f2fs in progress.  It's time to get rid of
CONFIG_READ_ONLY_THP_FOR_FS.  It unnecessarily bloats struct inode and
it's now getting in the way of removing the old uniform split behaviour
of split_huge_page_to_list_to_order().

If more work needs to be done to your filesystem to support PMD-sized
folios, this would be a great time to do it ;-)  There's lots of examples
to learn from now; the infrastructure should all be in place, and I'll
be available to help after Plumbers (December 15th).

[note: all relevant filesystem mailing lists are on the bcc so as not to
alarm mailing list managers]


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
