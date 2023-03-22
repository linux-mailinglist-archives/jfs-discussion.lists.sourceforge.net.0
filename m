Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (unknown [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEB86C50D0
	for <lists+jfs-discussion@lfdr.de>; Wed, 22 Mar 2023 17:33:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pf1OG-000354-O9;
	Wed, 22 Mar 2023 16:32:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <33ywbZAkbAMwAGH2s33w9s770v.y66y3wCAw9u65Bw5B.u64@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pf1L3-0002zc-CB for jfs-discussion@lists.sourceforge.net;
 Wed, 22 Mar 2023 16:29:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=myMUdX4Td4phlYiYoVFlcuB6n75wqpmUtnUNsWB1v2A=; b=KZQiUbdWL2gqntXOmMN93wAZLm
 Qv2sRpcEanGME4vSg5q+R7Zg8X/FkT6iXRe0vYO7AxMx/ThUCl0C6srbdor/I2v2/ETaZLSg6BDeY
 PBnuRh5Uekv4adoUdoBLzzRYjlW2yEUUaLt4zvJJcs6coSP48xMGRPpeytWYPomSczv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=myMUdX4Td4phlYiYoVFlcuB6n75wqpmUtnUNsWB1v2A=; b=A
 By0oqkLwXoj0EptxKK2RWtD8UQ2qQNnCKeurBT241lUZnmjLi/gk9ebF+ssDaLjf0ahw0fUBVLtrR
 XfvD3faknxdHnCEKmOYfx4/r5pIcnzNHzJZWw4VSWLdfBrR1OCIEF9G/vVbXE3r+EuFJ0xmSeFxfI
 mku1G0hSEgg5pcPc=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pf1L3-0003XC-CV for jfs-discussion@lists.sourceforge.net;
 Wed, 22 Mar 2023 16:29:25 +0000
Received: by mail-io1-f72.google.com with SMTP id
 w4-20020a5d9604000000b0074d326b26bcso10056225iol.9
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 22 Mar 2023 09:29:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679502560;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=myMUdX4Td4phlYiYoVFlcuB6n75wqpmUtnUNsWB1v2A=;
 b=lKa0GwefqJZtydha5qI7uBKMdV4PYryt83SUtrFmjBPn1Pgii9ydv/RgfKeh7t9oax
 I80VRF6AaSDVGLlknVJEEb4rReLqH97SI167t56VSYzRCL4218fLytch2E/BOSWBeCqu
 Bw26PM6XoWd96qexue8XEyKXC5E1JTYNMt0Ptl4vSotqzEENhl34l2EmrTvLTB1kZ3G1
 FpYDt9j/mtmk+iw3NdkRcFMhuVqIOvAKVadNQEhMXCWNqO2lqqLNK6Xw/hb544658gC7
 XE2BD+pGfjt8z4dlmLszZggOt45c4n9wTTC8T/AYmV5dYbkhqxacbQwi+HKw2RsriCgG
 hy3w==
X-Gm-Message-State: AO0yUKU+HW5rW/z0aq8V1jWylZA6osj8WeWWRJsoNNHPKzNcIg1oNsoC
 k8F2GOXpjkGAtUb4F7x+0u4lL68QPjz/7H3gYCP99EKSz144
X-Google-Smtp-Source: AK7set8UtppURXyjZYz4V6LU8LYms2UD7afjr6Tk9mQTvSHTS04gvIpwMP8pz46U8NsrTOvMsx+hLnb5TJXgArCXYrztGZpxunVg
MIME-Version: 1.0
X-Received: by 2002:a02:9485:0:b0:3be:81d3:5af3 with SMTP id
 x5-20020a029485000000b003be81d35af3mr3321113jah.3.1679502559866; Wed, 22 Mar
 2023 09:29:19 -0700 (PDT)
Date: Wed, 22 Mar 2023 09:29:19 -0700
In-Reply-To: <0000000000000ece5005eaa8f1d1@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007af84a05f77fa920@google.com>
From: syzbot <syzbot+b9ba793adebb63e56dba@syzkaller.appspotmail.com>
To: dave.kleikamp@oracle.com, jfs-discussion@lists.sourceforge.net, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 liushixin2@huawei.com, shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot suspects this issue was fixed by commit: commit
 fad376fce0af58deebc5075b8539dc05bf639af3
 Author: Liu Shixin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
 Date: Thu Nov 3 03:01:59 2022 +0000 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1pf1L3-0003XC-CV
X-Mailman-Approved-At: Wed, 22 Mar 2023 16:32:44 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbAllocBits
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit fad376fce0af58deebc5075b8539dc05bf639af3
Author: Liu Shixin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Date:   Thu Nov 3 03:01:59 2022 +0000

    fs/jfs: fix shift exponent db_agl2size negative

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12d90bf6c80000
start commit:   a6afa4199d3d Merge tag 'mailbox-v6.1' of git://git.linaro...
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
dashboard link: https://syzkaller.appspot.com/bug?extid=b9ba793adebb63e56dba
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1322ae34880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10403c94880000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs/jfs: fix shift exponent db_agl2size negative

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
