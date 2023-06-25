Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E035773D194
	for <lists+jfs-discussion@lfdr.de>; Sun, 25 Jun 2023 16:56:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qDR9k-0003oF-6P;
	Sun, 25 Jun 2023 14:56:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1qDR9d-0003o5-L6
 for jfs-discussion@lists.sourceforge.net;
 Sun, 25 Jun 2023 14:55:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6M6xaQ+v+1UpTE495Uk3ukIIDlfS3Cd3SrCD2m/lK5U=; b=GzU9FXe0FI82QRW1/sa3hpCuTO
 Y3HDGU4j+vWyRRzd0iAChp/Fd5rZ0x1Xwio2stSkWqZxl2hblOowMmjBko9Cl4x95hFQ8MMGe5dLu
 +pVe4wyNxuEhjXFkt1DiIhSS8OQQeCTC9Er/h5K3PpDtupE8GrHXYIrgYE+v71rYM45Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6M6xaQ+v+1UpTE495Uk3ukIIDlfS3Cd3SrCD2m/lK5U=; b=d
 O3RdZuTLOk7+Gx65B2Z61alZsfv1sa1rUPqzWWsXgY5Mf6eFUfwJcck/Dej9E8aKIKORk+R8HzssF
 J8unPzhgCp2ddJtQ4uEve6AOE5DsveT093G5CSuqpp2VN7KOgMYli2/r+/IsubYbXnHNH5JlHnN+I
 5jSTpWilkDIY/wjU=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qDR9a-00E5Bk-EI for jfs-discussion@lists.sourceforge.net;
 Sun, 25 Jun 2023 14:55:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:
 Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6M6xaQ+v+1UpTE495Uk3ukIIDlfS3Cd3SrCD2m/lK5U=; b=JoYGvF4lBRr4nxBIzMORb/cDtK
 nsoaPvs1wvT9Sr+KkJdWIrEBOTdMySye0uDSQLiP6DRSUREyvp+t1zz25iMvD6kZnXUJELRITvkat
 D+LmHZ1/YJHMiBQ6BEWGt9JYH3I+gir61jxvg7mcRaddY6Nlk7eXdftv0iaFoOpjqbeXsB145q7rM
 ZzAhTwHe3Rg4AEX+WBljFxjaxZvQYOTIVeF/SkueN1Y16aIbgV9eCQqZmSa8xIVlrF0YCeSBz67RT
 IUIMgqKs3/zy4g2mKFRKGKTnp8QZf6XMRdNUF0x599q09qWBooUilDv7gcCqoY2Rq6Fkp0CbvG0JH
 NQgh53dg==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1qDQjR-00Fu6J-5D; Sun, 25 Jun 2023 14:28:49 +0000
Date: Sun, 25 Jun 2023 14:28:49 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: sfrench@samba.org, linkinjeon@kernel.org, shaggy@kernel.org
Message-ID: <ZJhPIYSUzBpuqosh@gallifrey>
MIME-Version: 1.0
Content-Disposition: inline
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-21-amd64 (x86_64)
X-Uptime: 14:18:16 up 98 days, 52 min,  1 user,  load average: 0.00, 0.01, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi All, I just tripped over three sets of duplicated unicode
 tables and wondered if anyone had tried to rationalise them: The pair of:
 ./fs/smb/server/uniupr.h ./fs/smb/client/cifs_uniupr.h are identical except
 for formatting. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qDR9a-00E5Bk-EI
Subject: [Jfs-discussion] Duplicate unicode tables in smb/cifs/jfs
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi All,
  I just tripped over three sets of duplicated unicode tables and
wondered if anyone had tried to rationalise them:

  The pair of:
   ./fs/smb/server/uniupr.h
   ./fs/smb/client/cifs_uniupr.h

   are identical except for formatting.

./fs/jfs/jfs_uniupr.c,
  and I think this is the same with some change in variable name.

(I'm guessing the same thing is implemented in a bunch of
other places as well in a different way)

Would it make sense to swing fs/smb/server/uniupr.h up to
hmm, maybe fs/uniupr.h, remove any of the cifs_ prefixes
and then use the same include in all 3 places?

Maybe then later look at using some of the nls code?

Dave (who just tripped over this stuff)

-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
