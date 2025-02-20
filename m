Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0948CA3D5B7
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Feb 2025 11:00:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tl3LK-0002Rm-VM;
	Thu, 20 Feb 2025 09:59:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rand.sec96@gmail.com>) id 1tl3LJ-0002Rc-2P
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 09:59:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uAMWl9PLfDy04Bs+KIcgrODYhWdNOmoMzeRBBUctSss=; b=LCsO4CRVnVZMBGG06xB6r71HID
 +jAsrRcTdZ/MPVKIyo+f0e80DdLqxXKlWqO+ogvCR72lTRuXdJkdTX7ndJZh3fVoPmiqhXy7xxk0o
 hkxAPl23b3Cckfi8aHbASXkuVHvA2y58yHpB3W0UEopkgsemwTkGohu05nOKB0DU+MHE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uAMWl9PLfDy04Bs+KIcgrODYhWdNOmoMzeRBBUctSss=; b=JpjC6BMP3nz9QDdL0Od2RhH1h9
 phXblsDHIjXvp8L0lNxhfAy/8YlT6KRzU+PY7MTnSaaFroJjxHVz9WplbaRhTVFdMiH7ePjtzZFLK
 DBNI/jOSMqIH7mjpr5ovQGKWBvsXRdItQbihp/sYW4d465ah2b4ryzO9LXYlnZZFGP14=;
Received: from mail-lj1-f172.google.com ([209.85.208.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tl3LI-0000Ef-Uy for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 09:59:41 +0000
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-3061513d353so7240831fa.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Feb 2025 01:59:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740045569; x=1740650369; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uAMWl9PLfDy04Bs+KIcgrODYhWdNOmoMzeRBBUctSss=;
 b=ZC63u0MDNmm4546peLmvk9O8rCpgk3dRJiuhB6CFgV4JsyL0OjoOaZl1KieQAGs+4A
 Z3Jpc5rmtKwGnn1mMJhrlshHLs0p4AZkR54JnrsPGsmGTiY5xOZbmwAj3dsTmOgOlpKc
 m2nTouc+EAGmCx74fk3NucZtK+Dy2f8kE38C74M2rYHARrftUh8eeO/UGp/JwPgZi4pV
 F6hOH6u59CKOdG+BCQXQIn9UDLU1/XMirlppdL596TxqQ7XgcIQS1AQLBXVnh6Q9IYTn
 tx8hHHny0YO94Agx2XiwjeVWljFgI3kQcSZxyqi6S+uUJmVinrmNR0uATWKjEUp98ioL
 8YMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740045569; x=1740650369;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uAMWl9PLfDy04Bs+KIcgrODYhWdNOmoMzeRBBUctSss=;
 b=p/B1sbj5VCMt1JIDvkG8Tsa8zezyAMqgQCVWE+62RZcxdb+3e/BnILmdBaV29juNyY
 3r4sfb/uaNKHVB6o06GhYKVhtd77dLjyLHwPDM5utoZSSrhOscNhhNILv4YRbtGoqUAW
 7na9vF8T68x5+oy4WEgtsBhQgYk8LOplK5z7WgM957WCJNFbjGrA2sK1XFLmWkuLgP4r
 0kaKFqVEbonBpW6YLVfPZGT+Dtp2LjerRDTskU3i1k1lZpJpyyjZyIAGIg0EaN1EDKmS
 d2Eg+6CCpc5p98LbBSEx9mbP4lgCuBUg03EoosJPLK2aOytbOcA+zL2jNMNT+FezcgW1
 fQ8w==
X-Forwarded-Encrypted: i=1;
 AJvYcCV6yNzZ/g2AvTHnrtHHIMOtu/bc7OAuZ4Md+KX7V9XeHxGzqIC/CcKwU8+jisHkcpppSTIOnQ/THFWlb7KEbw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzpzzlzB0yM6XPhOHc3C2MJl8XPgN5XbAEFBak16Krkd4f+W+zV
 UyF3t4xov0kRsrBy/84tmIAWJJqwOLHjsMTytqtrW7raOTOtWZmeG4GwikeUCxkdgzofND4q5fC
 FyhU15SzWA1NXH8brZfcaa05ts69KrR+Nq9zg+FvZ
X-Gm-Gg: ASbGncu8NBm4b2yD1CWCJSTjDvRr/6fnPnmhFuoZ7PpKJBYQlclOLEng9jW44U8ZYTF
 1Pxzfb7pnL1dxpiKGyrzeqVLu2Xh5gD3T2z9OgKS18EuPQGrCmdg5sTvzmfB64PpKn6aewWTRpX
 s=
X-Google-Smtp-Source: AGHT+IFIsSsy0MCPsjXngTu6cybUiCgLNfAULaQySW6JHJyT7glm8RIKirUFoVrvZjgX7bTK37tA+hGGoo7kNDxXcqc=
X-Received: by 2002:a2e:9bd4:0:b0:308:f827:f8fa with SMTP id
 38308e7fff4ca-30927b1e718mr62333121fa.27.1740045569014; Thu, 20 Feb 2025
 01:59:29 -0800 (PST)
MIME-Version: 1.0
References: <20250219072504.1655151-1-rand.sec96@gmail.com>
 <v3rsldvzq4ujgcxamjwcmmfm62wgdgjscg25c6t6xph3itjedp@sbuayguprw2i>
 <CAN8dotnkd-fSQurTFAf_8z3K1yRNj5SVJ4qYc3Tq7cVZLq02qA@mail.gmail.com>
 <tx4mjsvkleki6butsmbh533y6w55rt44zaorh6auhjyfgzunj3@oaiwslri6x5h>
In-Reply-To: <tx4mjsvkleki6butsmbh533y6w55rt44zaorh6auhjyfgzunj3@oaiwslri6x5h>
Date: Thu, 20 Feb 2025 12:59:16 +0300
X-Gm-Features: AWEUYZkJyg6yWlqtbY5rQ-SpHsGBNhAbsYs9C2cvgGTGSuJDI8kwfsCK3CkTikQ
Message-ID: <CAN8dotmC55rYdRjz_nph+C8ZU7K49wC4TEGWA4xjzhM0rjix6g@mail.gmail.com>
To: Fedor Pchelkin <pchelkin@ispras.ru>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Feb 19, 2025 at 2:37 PM Fedor Pchelkin wrote: >
   Yes. And not specifically, but deliberately (it's a requirement). The > existing
    problems should be fixed there at first. Done. Thanks again for the feedback!
    
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                         [209.85.208.172 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [209.85.208.172 listed in bl.score.senderscore.com]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [rand.sec96[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [rand.sec96[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.172 listed in list.dnswl.org]
X-Headers-End: 1tl3LI-0000Ef-Uy
Subject: Re: [Jfs-discussion] [PATCH 5.10.y] fs/jfs: cast inactags to s64 to
 prevent potential overflow
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
From: Rand Deeb via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Rand Deeb <rand.sec96@gmail.com>
Cc: voskresenski.stanislav@confident.ru, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net, lvc-project@linuxtesting.org,
 linux-kernel@vger.kernel.org, Rand Deeb <deeb.rand@confident.ru>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBGZWIgMTksIDIwMjUgYXQgMjozN+KAr1BNIEZlZG9yIFBjaGVsa2luIDxwY2hlbGtp
bkBpc3ByYXMucnU+IHdyb3RlOgo+IFllcy4gQW5kIG5vdCBzcGVjaWZpY2FsbHksIGJ1dCBkZWxp
YmVyYXRlbHkgKGl0J3MgYSByZXF1aXJlbWVudCkuIFRoZQo+IGV4aXN0aW5nIHByb2JsZW1zIHNo
b3VsZCBiZSBmaXhlZCB0aGVyZSBhdCBmaXJzdC4KCkRvbmUuIFRoYW5rcyBhZ2FpbiBmb3IgdGhl
IGZlZWRiYWNrIQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
amZzLWRpc2N1c3Npb24K
