Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 38521B032C3
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Jul 2025 21:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r7gF0/VT6g7V5PtMUi3RUvrGW+7n3nrilCy5kr9TVws=; b=WPMKMgyEHEUBhbPN5jPHns1vHw
	js23IcCtcF6NEKPvLbJdOlc3evyLu/hgq0lSizjFfpTHwPyrMqbvGA+WBlIHIPvcNcKI8jwN/ozkR
	pd/I068mzh5yExE5tkqbZMEmrjV2VJ0R8I4siC0YgdX8HKVyhj+oVyOo9HUex2YO6TOA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ub2bL-0007Fp-H2;
	Sun, 13 Jul 2025 19:43:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wwzcherry@gmail.com>) id 1ub2ap-0007Ew-20
 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Jul 2025 19:42:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a9//50vjoiiiyhbK2cRfVCosg/zYyECmeyqF236JOUA=; b=jmntfRtP/1WoxXEZQw+55dhLjX
 8gglDThNIe8guOtqOf2p9luhEvOzz0ATjEE19WRoK2CRDhM9rYwwtdPOf7cWrgrPXjxXGcH5lm/JH
 AEnuaG/fi16EDI6eTW6W4eVf09nJ1RSEHjIm5cLRGYhqqX/6SS6T5rkyEhhj3eikOkfc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=a9//50vjoiiiyhbK2cRfVCosg/zYyECmeyqF236JOUA=; b=N
 kqi0N/67MwH3q67wVJIHe9sRntaipIiO2YlzOaGIVnJ6/EtuJJa6fZ5c7opYdvowgjpCW6yxN2hGZ
 PA1BMHGvs4rE7zavWPYPt+Up3OLc0JXcLGo6q7ZHPLgk3NIz/V3gl+z2QM0ehX1vll84Ta/S8fc3z
 ofdLe8gjWTMB2YJc=;
Received: from mail-lj1-f182.google.com ([209.85.208.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ub2aj-0001g8-Bu for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Jul 2025 19:42:29 +0000
Received: by mail-lj1-f182.google.com with SMTP id
 38308e7fff4ca-32f1df5703aso28693091fa.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 13 Jul 2025 12:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1752435738; x=1753040538; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=a9//50vjoiiiyhbK2cRfVCosg/zYyECmeyqF236JOUA=;
 b=jvR+/V1EAgqrf3hISLsIjsqAAyerUjolui4+7Doqzvyzx7guGCHNEU1+7BCdCsXtSj
 DTy4IWz7mXnGz2fVk8xN6YxPuYhAAP1QhlKfb0cbVlv563qky8YjQFODHoeHwnRLSK1H
 gmwGz+YToBvjvrziHElT0OuL/j1Aqjdfu2FqZhzKzJtznZdVio9jj4j0E480mnXEyaDa
 ZnXJ1hIdaH/O9Rq1fJeSKPiC93bzssbcQbodwP4T6GyS8NXgGvJ+9IaHg+GzkgkrGtZO
 rIuDaBHZrTakT1yGzWUCkUDXuyTb9G+S36Tzng9yCcMmzy4hAk+iyjlls3ANenih3qlo
 /Cbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752435738; x=1753040538;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=a9//50vjoiiiyhbK2cRfVCosg/zYyECmeyqF236JOUA=;
 b=sxEk2EvHXihugmJFdnyWXHZ/WtBzYVlQmFULWZXJ9Bm6+7E8iw+XVNucE1y5ccyNLy
 2Ta2TBuE6TEuQJIG23rF8rzQ1dETZo+a3Zs1rAdycAi8ek2KNOKozIg7Z8Bw9tdiZsZX
 L1VS0xZZoxkR7VQ5aFjD7+Qr6JDWDR+mCvv7IxtPbqY1g71aKOdW5J1ODNAjOYS7G2ay
 lfSAnM1DrSagjlJ79pmTfR1DW45RYugRXZm8pnOvAuBl8JGgixQwSRiHMj7kKlVAKmqV
 3c94yhUrYc88GuO4uecxIxoRHKTIKbobxSd2H4TpybVsbYI28uPKmI+FL4oTDnCqfix1
 j0+g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXmtgWs/2sG6wWvAOtIgwJbYf6g9tYYyNIgWxhhribYKrKNymzfp/1ZOHnvI5To9WK3ua2wQEScSmYz/CprVw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw/PL2394k/EgwSjHN3nUHYyXsQ5FXN3FL89JunnWzhCEn8ILPM
 TLkYHuPxELJIv/xbswduhXxMTCMza9bFDvr8SaHsXOEIAeCLRi9kTlbfNcrFaFd+9hYzsGBgy3W
 MLl13Npvtx8dpfj8WKrt2c5P3vWhMW5s=
X-Gm-Gg: ASbGnct4Dhx75SC3VlPLbFfVVFhU0tdy77DBSIT09qRG0rOonft4waoaim+YmKX+c+K
 DU8RIxT8WRWd7baj/bvzS4NMj8ybP5j6L3XJjjCObsupctqupy8qciZeOmPeN1A0awidCHZZNzG
 D3NDT1cXotRW9wd0HPQlxNpEUXK8mEdC+8pkl5su+3lMs8z7z6Q3QRN7EL/VjWyP+H2i1e/pwgZ
 bGDSz/9IMe23PyHtqrm
X-Google-Smtp-Source: AGHT+IF6ynNi7Lws0bYmJ/+VG/25CB2HCtCb7/eL+Dfq385oD19Mr/qCUIIUrmFndEPNnhNu+Gxeu8X8sz2MpslcYE0=
X-Received: by 2002:a2e:bea7:0:b0:32c:bc69:e918 with SMTP id
 38308e7fff4ca-33054f52393mr34056211fa.1.1752435737347; Sun, 13 Jul 2025
 12:42:17 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 13 Jul 2025 15:42:05 -0400
X-Gm-Features: Ac12FXxrvh7yGO1Lq5CMTPQBK-fBaxO-tLHNCgMIgGP0aZcNyQ0VdN-BamRf0yw
Message-ID: <CANrG6LsjNx491oP=qsqVpwbpXAg19DOLoDw2C84fDPgP_yexaQ@mail.gmail.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hi Dave & jfs discussion I found this bug on the latest Linux
 6.16-rc5. I found another bug reported at txUnlock jfs_txnmgr.c:931. Hope
 these materials can help you analysis this issue.
 https://github.com/AmoyCherry/syzllm-bu [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [wwzcherry(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.182 listed in wl.mailspike.net]
X-Headers-End: 1ub2aj-0001g8-Bu
Subject: [Jfs-discussion] kernel BUG in txAbort
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
From: Vincent via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Vincent <wwzcherry@gmail.com>
Cc: syzkaller@googlegroups.com, meng xu <meng.xu.cs@uwaterloo.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi Dave & jfs discussion

I found this bug on the latest Linux 6.16-rc5.
I found another bug reported at txUnlock jfs_txnmgr.c:931. Hope these
materials can help you analysis this issue.
https://github.com/AmoyCherry/syzllm-bug-reports/blob/main/bugs/6.16rc5/kernel%20BUG%20in%20txUnlock/report0


Repro C Program:
https://github.com/AmoyCherry/syzllm-bug-reports/blob/main/bugs/6.16rc5/kernel%20BUG%20in%20txAbort/repro.cprog
Repro Guid: https://github.com/AmoyCherry/syzllm-bug-reports/blob/main/bugs/6.16rc5/reproduce_guid.md
Bug Report: https://github.com/AmoyCherry/syzllm-bug-reports/blob/main/bugs/6.16rc5/kernel%20BUG%20in%20txAbort/report0


All the best,
Vincent


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
