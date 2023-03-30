Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE016D013B
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 12:31:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phpYV-0005Qi-EH;
	Thu, 30 Mar 2023 10:30:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nogikh@google.com>) id 1phpYU-0005Qc-0W
 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:30:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nzB6uhmWn7pcdvMNIhOZORQN4ZImdgHhEgL7Nyl6dNU=; b=L+Bsz88aEZ9z86i7GkrvGXG9aN
 6sZlLHvwdQL6ypDS3TZrpe9UDfZMnyO9r7K/t7SA5FnNTa865k0ogCizvHUHNbMYYjV/e0WzR1rMm
 z0nEu2YZiJiEMBbSB4XGEDlxIx7gZ0TfANwvbYfAh9ui4eNDobDhrkdzwnJ0ipKm0blg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nzB6uhmWn7pcdvMNIhOZORQN4ZImdgHhEgL7Nyl6dNU=; b=Op5DGOnWYBvAXRO3RniXY6Pz79
 +L+tB7iBg3mfhzFB8nb2337QIXmB7p0edvi+F36228Fk9lZg/ILNnsJt7OSKnp4erusBDxNczgmlD
 hbQ28FNOzqQn3uRfNVrUivEbiTEAmoBO+fK4feVf4bPatQxxDRul3g3ZtwDxeHexcpZk=;
Received: from mail-il1-f175.google.com ([209.85.166.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1phpYT-009Sie-Vt for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:30:54 +0000
Received: by mail-il1-f175.google.com with SMTP id
 e9e14a558f8ab-3179d0e6123so355665ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 30 Mar 2023 03:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1680172248;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nzB6uhmWn7pcdvMNIhOZORQN4ZImdgHhEgL7Nyl6dNU=;
 b=a+CT2ZFRraSz2fyOyt9z2k+4OaPqPxj3uZn6ZF+j4nG8SNi9eN3tzoXw/tUnG1xaPY
 RD6FFRbZwwBvXhIfXMZ5I3MPUBSm5SC6N6Av0NQ+CzEMcS9/o3uSHxtWoB36URWFbS6Y
 o0i4qKnj6JiSvMxMw9X2WrC1iauUrPIBieb8fUlOfXC+SQ9UfWCIam4nxlSQgZMW5Ay4
 qgnsepj803WzpSnUbpsM9TQLQbsHSRyB61wPE6LdChHb5ORuIhQkUGopd+HyhWsIco0/
 cxx/MQrogeZ5EWfwovqqP1CcYscoWgKpv08P9vDNowRrIxSLFraKhP5UAvO6rMd0emmE
 kTcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680172248;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nzB6uhmWn7pcdvMNIhOZORQN4ZImdgHhEgL7Nyl6dNU=;
 b=DoCo4DJEBP+FpcBdzHklYqfggmMLDJQpqBeuH0uisYhxqepHC6QKWXyaLwqOPiteQY
 d7x8DSNzRZMWrhW5Gz/npR6yNa++CcJO0Z/XDnzkht4wHHfkfBgAh1rR32CM9dFGXIdg
 55YrQnM1v0sqja6dCslKVa05S/0CtcKfK/sysXbZsZcYjlxdZmZisnGKbuBcbIrYWLx/
 /ZFepcnjp5mFPQ0ygcL7PuRCL4p0vSb9QFZIlfzrzNp2i0oF7b9sc8x2qiQXJIU9dPOr
 Yh16skrPA2uFESVQJs7zgJaeqvvtQEhshuf7t2BgNILDMZOQxcQQUZ/uMcvwPhTuOzMF
 B7YQ==
X-Gm-Message-State: AAQBX9etv/f0GC3ndb2JPBWqO9f/nHyCHrVFZhjEpATVOWUt+UNtLSBR
 oD/Mx0GC7t/EcI48a6KBhIvG+0Cc7l9mFG98wqZ3t/xhL6qupQ/9ftOB2w==
X-Google-Smtp-Source: AKy350ZvyBZ1hNMiHiwttM9WrbLve8bSqMrZ1r+WbwZldQY1aL7Agm/q5vBCYlPGD/a65hhrWvPmedKCoseb20aeam8=
X-Received: by 2002:ac8:5c47:0:b0:3b3:20d8:a84 with SMTP id
 j7-20020ac85c47000000b003b320d80a84mr274148qtj.2.1680170610982; Thu, 30 Mar
 2023 03:03:30 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000094982205f0874589@google.com>
In-Reply-To: <00000000000094982205f0874589@google.com>
Date: Thu, 30 Mar 2023 12:03:18 +0200
Message-ID: <CANp29Y5Tm=afYVjhruewwFVzzY=Bq8Xk_2xVxzsCLkBks4ct4g@mail.gmail.com>
To: syzbot <syzbot+1d096d31de6a0491b55e@syzkaller.appspotmail.com>
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  #syz set subsystems: jfs On Sat, Dec 24, 2022 at 12:37 AM
    syzbot <syzbot+1d096d31de6a0491b55e@syzkaller.appspotmail.com> wrote: > >
    Hello, > > syzbot found the following issue on: > > HEAD commit: aeba12b26c79
    Merge tag 'nf [...] 
 
 Content analysis details:   (-15.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.166.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.166.175 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
                             welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
                             welcome-list
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
                             Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1phpYT-009Sie-Vt
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] [fat?] general protection
 fault in txEnd
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
From: Aleksandr Nogikh via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Aleksandr Nogikh <nogikh@google.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

I3N5eiBzZXQgc3Vic3lzdGVtczogamZzCgpPbiBTYXQsIERlYyAyNCwgMjAyMiBhdCAxMjozN+KA
r0FNIHN5emJvdAo8c3l6Ym90KzFkMDk2ZDMxZGU2YTA0OTFiNTVlQHN5emthbGxlci5hcHBzcG90
bWFpbC5jb20+IHdyb3RlOgo+Cj4gSGVsbG8sCj4KPiBzeXpib3QgZm91bmQgdGhlIGZvbGxvd2lu
ZyBpc3N1ZSBvbjoKPgo+IEhFQUQgY29tbWl0OiAgICBhZWJhMTJiMjZjNzkgTWVyZ2UgdGFnICdu
ZnNkLTYuMi0xJyBvZiBnaXQ6Ly9naXQua2VybmVsLm9yLi4KPiBnaXQgdHJlZTogICAgICAgdXBz
dHJlYW0KPiBjb25zb2xlK3N0cmFjZTogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9s
b2cudHh0P3g9MTc0ODViZjA0ODAwMDAKPiBrZXJuZWwgY29uZmlnOiAgaHR0cHM6Ly9zeXprYWxs
ZXIuYXBwc3BvdC5jb20veC8uY29uZmlnP3g9NGQzNDhmYzFlMGY0ODNjOQo+IGRhc2hib2FyZCBs
aW5rOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9MWQwOTZkMzFkZTZh
MDQ5MWI1NWUKPiBjb21waWxlcjogICAgICAgRGViaWFuIGNsYW5nIHZlcnNpb24gMTMuMC4xLSsr
MjAyMjAxMjYwOTIwMzMrNzVlMzNmNzFjMmRhLTF+ZXhwMX4yMDIyMDEyNjIxMjExMi42MywgR05V
IGxkIChHTlUgQmludXRpbHMgZm9yIERlYmlhbikgMi4zNS4yCj4gc3l6IHJlcHJvOiAgICAgIGh0
dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvcmVwcm8uc3l6P3g9MTE3YWVmMTA0ODAwMDAK
PiBDIHJlcHJvZHVjZXI6ICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXByby5j
P3g9MTUyMDYwOTA0ODAwMDAKPgo+IERvd25sb2FkYWJsZSBhc3NldHM6Cj4gZGlzayBpbWFnZTog
aHR0cHM6Ly9zdG9yYWdlLmdvb2dsZWFwaXMuY29tL3N5emJvdC1hc3NldHMvNjYxZmUzM2Y4NTFi
L2Rpc2stYWViYTEyYjIucmF3Lnh6Cj4gdm1saW51eDogaHR0cHM6Ly9zdG9yYWdlLmdvb2dsZWFw
aXMuY29tL3N5emJvdC1hc3NldHMvYzkzOGJkY2YzYWQwL3ZtbGludXgtYWViYTEyYjIueHoKPiBr
ZXJuZWwgaW1hZ2U6IGh0dHBzOi8vc3RvcmFnZS5nb29nbGVhcGlzLmNvbS9zeXpib3QtYXNzZXRz
L2U3ZjczOGRlMzBiNy9iekltYWdlLWFlYmExMmIyLnh6Cj4gbW91bnRlZCBpbiByZXBybzogaHR0
cHM6Ly9zdG9yYWdlLmdvb2dsZWFwaXMuY29tL3N5emJvdC1hc3NldHMvOWVlM2NmZmM2MTUxL21v
dW50XzAuZ3oKPgo+IElNUE9SVEFOVDogaWYgeW91IGZpeCB0aGUgaXNzdWUsIHBsZWFzZSBhZGQg
dGhlIGZvbGxvd2luZyB0YWcgdG8gdGhlIGNvbW1pdDoKPiBSZXBvcnRlZC1ieTogc3l6Ym90KzFk
MDk2ZDMxZGU2YTA0OTFiNTVlQHN5emthbGxlci5hcHBzcG90bWFpbC5jb20KPgo+IEVSUk9SOiAo
ZGV2aWNlIGxvb3AwKTogcmVtb3VudGluZyBmaWxlc3lzdGVtIGFzIHJlYWQtb25seQo+IGdlbmVy
YWwgcHJvdGVjdGlvbiBmYXVsdCwgcHJvYmFibHkgZm9yIG5vbi1jYW5vbmljYWwgYWRkcmVzcyAw
eGRmZmZmYzAwMDAwMDAwMjk6IDAwMDAgWyMxXSBQUkVFTVBUIFNNUCBLQVNBTgo+IEtBU0FOOiBu
dWxsLXB0ci1kZXJlZiBpbiByYW5nZSBbMHgwMDAwMDAwMDAwMDAwMTQ4LTB4MDAwMDAwMDAwMDAw
MDE0Zl0KPiBDUFU6IDEgUElEOiA1MTE2IENvbW06IHN5ei1leGVjdXRvcjMxNyBOb3QgdGFpbnRl
ZCA2LjEuMC1zeXprYWxsZXItMTM3ODEtZ2FlYmExMmIyNmM3OSAjMAo+IEhhcmR3YXJlIG5hbWU6
IEdvb2dsZSBHb29nbGUgQ29tcHV0ZSBFbmdpbmUvR29vZ2xlIENvbXB1dGUgRW5naW5lLCBCSU9T
IEdvb2dsZSAxMC8yNi8yMDIyCj4gUklQOiAwMDEwOnR4RW5kKzB4MWRjLzB4NTYwIGZzL2pmcy9q
ZnNfdHhubWdyLmM6NTM0Cj4gQ29kZTogMDAgODQgYzAgMGYgODUgZDggMDIgMDAgMDAgNjYgNDEg
ODkgMWUgNDEgMGYgYjcgYzUgODkgMDUgZTcgNWMgMGIgMGYgNGMgOGIgNzQgMjQgMDggNDkgOGQg
OWUgNGMgMDEgMDAgMDAgNDggODkgZDggNDggYzEgZTggMDMgPDQyPiA4YSAwNCAyMCA4NCBjMCAw
ZiA4NSBjOCAwMiAwMCAwMCA4YiAyYiA4ZCA3NSBmZiA4OSAzMyAzMSBmZiBlOAo+IFJTUDogMDAx
ODpmZmZmYzkwMDAzZDVmOWYwIEVGTEFHUzogMDAwMTAyMDMKPiBSQVg6IDAwMDAwMDAwMDAwMDAw
MjkgUkJYOiAwMDAwMDAwMDAwMDAwMTRjIFJDWDogMDAwMDAwMDAwMDAwMDAwMAo+IFJEWDogZmZm
Zjg4ODA3ZWI5M2E4MCBSU0k6IDAwMDAwMDAwMDAwMDAwMDAgUkRJOiAwMDAwMDAwMDAwMDAwMDAw
Cj4gUkJQOiAxZmZmZjkyMDAwNGM2MjI3IFIwODogZmZmZmZmZmY4MzBjM2MyZiBSMDk6IGZmZmZm
YmZmZjIwZmI0M2EKPiBSMTA6IGZmZmZmYmZmZjIwZmI0M2EgUjExOiAxZmZmZmZmZmYyMGZiNDM5
IFIxMjogZGZmZmZjMDAwMDAwMDAwMAo+IFIxMzogMDAwMDAwMDAwMDAwMDAwMSBSMTQ6IDAwMDAw
MDAwMDAwMDAwMDAgUjE1OiAwMDAwMDAwMDAwMDAwMTEwCj4gRlM6ICAwMDAwN2YyNzM4ODAxNzAw
KDAwMDApIEdTOmZmZmY4ODgwYjk5MDAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMAo+
IENTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMKPiBDUjI6
IDAwMDA3ZjI3M2ZjMjMwMDAgQ1IzOiAwMDAwMDAwMDdlN2E0MDAwIENSNDogMDAwMDAwMDAwMDM1
MDZlMAo+IERSMDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6IDAwMDAwMDAwMDAwMDAwMDAgRFIyOiAw
MDAwMDAwMDAwMDAwMDAwCj4gRFIzOiAwMDAwMDAwMDAwMDAwMDAwIERSNjogMDAwMDAwMDBmZmZl
MGZmMCBEUjc6IDAwMDAwMDAwMDAwMDA0MDAKPiBDYWxsIFRyYWNlOgo+ICA8VEFTSz4KPiAgYWRk
X21pc3NpbmdfaW5kaWNlcyBmcy9qZnMvamZzX2R0cmVlLmM6MjY1OCBbaW5saW5lXQo+ICBqZnNf
cmVhZGRpcisweDI3N2MvMHg0NGIwIGZzL2pmcy9qZnNfZHRyZWUuYzozMDA0Cj4gIGl0ZXJhdGVf
ZGlyKzB4MjU3LzB4NWYwCj4gIF9fZG9fc3lzX2dldGRlbnRzIGZzL3JlYWRkaXIuYzoyODYgW2lu
bGluZV0KPiAgX19zZV9zeXNfZ2V0ZGVudHMrMHgxZGIvMHg0ZDAgZnMvcmVhZGRpci5jOjI3MQo+
ICBkb19zeXNjYWxsX3g2NCBhcmNoL3g4Ni9lbnRyeS9jb21tb24uYzo1MCBbaW5saW5lXQo+ICBk
b19zeXNjYWxsXzY0KzB4M2QvMHhiMCBhcmNoL3g4Ni9lbnRyeS9jb21tb24uYzo4MAo+ICBlbnRy
eV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg2My8weGNkCj4gUklQOiAwMDMzOjB4N2YyNzNm
Yzc2NzA5Cj4gQ29kZTogMjggMDAgMDAgMDAgNzUgMDUgNDggODMgYzQgMjggYzMgZTggNzEgMTUg
MDAgMDAgOTAgNDggODkgZjggNDggODkgZjcgNDggODkgZDYgNDggODkgY2EgNGQgODkgYzIgNGQg
ODkgYzggNGMgOGIgNGMgMjQgMDggMGYgMDUgPDQ4PiAzZCAwMSBmMCBmZiBmZiA3MyAwMSBjMyA0
OCBjNyBjMSBiOCBmZiBmZiBmZiBmNyBkOCA2NCA4OSAwMSA0OAo+IFJTUDogMDAyYjowMDAwN2Yy
NzM4ODAxMmY4IEVGTEFHUzogMDAwMDAyNDYgT1JJR19SQVg6IDAwMDAwMDAwMDAwMDAwNGUKPiBS
QVg6IGZmZmZmZmZmZmZmZmZmZGEgUkJYOiAwMDAwN2YyNzNmZDAxN2IwIFJDWDogMDAwMDdmMjcz
ZmM3NjcwOQo+IFJEWDogMDAwMDAwMDAwMDAwMDA0YyBSU0k6IDAwMDAwMDAwMjAwMDAxMDAgUkRJ
OiAwMDAwMDAwMDAwMDAwMDA0Cj4gUkJQOiAwMDMwNjU2YzY5NjYyZjJlIFIwODogMDAwMDAwMDAw
MDAwMDAwMCBSMDk6IDAwMDAwMDAwMDAwMDAwMDAKPiBSMTA6IDAwMDAwMDAwMDAwMDAwMDAgUjEx
OiAwMDAwMDAwMDAwMDAwMjQ2IFIxMjogNjE3NDZmNzU3MTcyNzM3NQo+IFIxMzogNzI2NzY1NzQ2
ZTY5NmY2ZSBSMTQ6IDcyNjE2MzczNjk2NDZmNmUgUjE1OiAwMDAwN2YyNzNmZDAxN2I4Cj4gIDwv
VEFTSz4KPiBNb2R1bGVzIGxpbmtlZCBpbjoKPiAtLS1bIGVuZCB0cmFjZSAwMDAwMDAwMDAwMDAw
MDAwIF0tLS0KPiBSSVA6IDAwMTA6dHhFbmQrMHgxZGMvMHg1NjAgZnMvamZzL2pmc190eG5tZ3Iu
Yzo1MzQKPiBDb2RlOiAwMCA4NCBjMCAwZiA4NSBkOCAwMiAwMCAwMCA2NiA0MSA4OSAxZSA0MSAw
ZiBiNyBjNSA4OSAwNSBlNyA1YyAwYiAwZiA0YyA4YiA3NCAyNCAwOCA0OSA4ZCA5ZSA0YyAwMSAw
MCAwMCA0OCA4OSBkOCA0OCBjMSBlOCAwMyA8NDI+IDhhIDA0IDIwIDg0IGMwIDBmIDg1IGM4IDAy
IDAwIDAwIDhiIDJiIDhkIDc1IGZmIDg5IDMzIDMxIGZmIGU4Cj4gUlNQOiAwMDE4OmZmZmZjOTAw
MDNkNWY5ZjAgRUZMQUdTOiAwMDAxMDIwMwo+IFJBWDogMDAwMDAwMDAwMDAwMDAyOSBSQlg6IDAw
MDAwMDAwMDAwMDAxNGMgUkNYOiAwMDAwMDAwMDAwMDAwMDAwCj4gUkRYOiBmZmZmODg4MDdlYjkz
YTgwIFJTSTogMDAwMDAwMDAwMDAwMDAwMCBSREk6IDAwMDAwMDAwMDAwMDAwMDAKPiBSQlA6IDFm
ZmZmOTIwMDA0YzYyMjcgUjA4OiBmZmZmZmZmZjgzMGMzYzJmIFIwOTogZmZmZmZiZmZmMjBmYjQz
YQo+IFIxMDogZmZmZmZiZmZmMjBmYjQzYSBSMTE6IDFmZmZmZmZmZjIwZmI0MzkgUjEyOiBkZmZm
ZmMwMDAwMDAwMDAwCj4gUjEzOiAwMDAwMDAwMDAwMDAwMDAxIFIxNDogMDAwMDAwMDAwMDAwMDAw
MCBSMTU6IDAwMDAwMDAwMDAwMDAxMTAKPiBGUzogIDAwMDA3ZjI3Mzg4MDE3MDAoMDAwMCkgR1M6
ZmZmZjg4ODBiOTkwMDAwMCgwMDAwKSBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCj4gQ1M6ICAwMDEw
IERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwo+IENSMjogMDAwMDdmMjcz
ZmMyMzAwMCBDUjM6IDAwMDAwMDAwN2U3YTQwMDAgQ1I0OiAwMDAwMDAwMDAwMzUwNmUwCj4gRFIw
OiAwMDAwMDAwMDAwMDAwMDAwIERSMTogMDAwMDAwMDAwMDAwMDAwMCBEUjI6IDAwMDAwMDAwMDAw
MDAwMDAKPiBEUjM6IDAwMDAwMDAwMDAwMDAwMDAgRFI2OiAwMDAwMDAwMGZmZmUwZmYwIERSNzog
MDAwMDAwMDAwMDAwMDQwMAo+IC0tLS0tLS0tLS0tLS0tLS0KPiBDb2RlIGRpc2Fzc2VtYmx5IChi
ZXN0IGd1ZXNzKToKPiAgICAwOiAgIDAwIDg0IGMwIDBmIDg1IGQ4IDAyICAgIGFkZCAgICAlYWws
MHgyZDg4NTBmKCVyYXgsJXJheCw4KQo+ICAgIDc6ICAgMDAgMDAgICAgICAgICAgICAgICAgICAg
YWRkICAgICVhbCwoJXJheCkKPiAgICA5OiAgIDY2IDQxIDg5IDFlICAgICAgICAgICAgIG1vdiAg
ICAlYngsKCVyMTQpCj4gICAgZDogICA0MSAwZiBiNyBjNSAgICAgICAgICAgICBtb3Z6d2wgJXIx
M3csJWVheAo+ICAgMTE6ICAgODkgMDUgZTcgNWMgMGIgMGYgICAgICAgbW92ICAgICVlYXgsMHhm
MGI1Y2U3KCVyaXApICAgICAgICAjIDB4ZjBiNWNmZQo+ICAgMTc6ICAgNGMgOGIgNzQgMjQgMDgg
ICAgICAgICAgbW92ICAgIDB4OCglcnNwKSwlcjE0Cj4gICAxYzogICA0OSA4ZCA5ZSA0YyAwMSAw
MCAwMCAgICBsZWEgICAgMHgxNGMoJXIxNCksJXJieAo+ICAgMjM6ICAgNDggODkgZDggICAgICAg
ICAgICAgICAgbW92ICAgICVyYngsJXJheAo+ICAgMjY6ICAgNDggYzEgZTggMDMgICAgICAgICAg
ICAgc2hyICAgICQweDMsJXJheAo+ICogMmE6ICAgNDIgOGEgMDQgMjAgICAgICAgICAgICAgbW92
ICAgICglcmF4LCVyMTIsMSksJWFsIDwtLSB0cmFwcGluZyBpbnN0cnVjdGlvbgo+ICAgMmU6ICAg
ODQgYzAgICAgICAgICAgICAgICAgICAgdGVzdCAgICVhbCwlYWwKPiAgIDMwOiAgIDBmIDg1IGM4
IDAyIDAwIDAwICAgICAgIGpuZSAgICAweDJmZQo+ICAgMzY6ICAgOGIgMmIgICAgICAgICAgICAg
ICAgICAgbW92ICAgICglcmJ4KSwlZWJwCj4gICAzODogICA4ZCA3NSBmZiAgICAgICAgICAgICAg
ICBsZWEgICAgLTB4MSglcmJwKSwlZXNpCj4gICAzYjogICA4OSAzMyAgICAgICAgICAgICAgICAg
ICBtb3YgICAgJWVzaSwoJXJieCkKPiAgIDNkOiAgIDMxIGZmICAgICAgICAgICAgICAgICAgIHhv
ciAgICAlZWRpLCVlZGkKPiAgIDNmOiAgIGU4ICAgICAgICAgICAgICAgICAgICAgIC5ieXRlIDB4
ZTgKPgo+Cj4gLS0tCj4gVGhpcyByZXBvcnQgaXMgZ2VuZXJhdGVkIGJ5IGEgYm90LiBJdCBtYXkg
Y29udGFpbiBlcnJvcnMuCj4gU2VlIGh0dHBzOi8vZ29vLmdsL3Rwc21FSiBmb3IgbW9yZSBpbmZv
cm1hdGlvbiBhYm91dCBzeXpib3QuCj4gc3l6Ym90IGVuZ2luZWVycyBjYW4gYmUgcmVhY2hlZCBh
dCBzeXprYWxsZXJAZ29vZ2xlZ3JvdXBzLmNvbS4KPgo+IHN5emJvdCB3aWxsIGtlZXAgdHJhY2sg
b2YgdGhpcyBpc3N1ZS4gU2VlOgo+IGh0dHBzOi8vZ29vLmdsL3Rwc21FSiNzdGF0dXMgZm9yIGhv
dyB0byBjb21tdW5pY2F0ZSB3aXRoIHN5emJvdC4KPiBzeXpib3QgY2FuIHRlc3QgcGF0Y2hlcyBm
b3IgdGhpcyBpc3N1ZSwgZm9yIGRldGFpbHMgc2VlOgo+IGh0dHBzOi8vZ29vLmdsL3Rwc21FSiN0
ZXN0aW5nLXBhdGNoZXMKPgo+IC0tCj4gWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNl
IHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAic3l6a2FsbGVyLWJ1Z3Mi
IGdyb3VwLgo+IFRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZp
bmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gc3l6a2FsbGVyLWJ1Z3MrdW5zdWJz
Y3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KPiBUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUg
d2ViIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9zeXprYWxsZXItYnVn
cy8wMDAwMDAwMDAwMDA5NDk4MjIwNWYwODc0NTg5JTQwZ29vZ2xlLmNvbS4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
